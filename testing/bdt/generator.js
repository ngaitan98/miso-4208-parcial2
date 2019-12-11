var AWS = require('aws-sdk');
var fs = require('fs');
var s3 = new AWS.S3();
const reports = 'reports.json'
const url = "https://mutantes.s3.amazonaws.com/"

var contenido = fs.readFileSync(reports);
var mutantes = JSON.parse(contenido);
for(i = 1; i <= 10;i++){
    const mutantInfo = fs.readFileSync(`./reports/report${i}.html`);
    var mutante = {
        "num" : i,
        "detectado" : !mutantInfo.includes("103 steps (103 passed)"),
        "compila": !mutantInfo.includes("103 steps (103 skipped)"),
        "bdtReport" : `${url}report${i}/bdt/report.html`
    }
    fs.writeFileSync("report.json", JSON.parse(JSON.stringify(mutante)))
    mutantes.mutantes.push(mutante);
    uploadReportToS3(i)
}
fs.writeFileSync(reports, JSON.stringify(mutantes));
uploadMutantToS3()
function uploadReportToS3(num){
    var params = {
        Bucket : "mutantes",
        Key: `report${num}/bdt/report.html`,
        Body: fs.createReadStream(`./reports/report${num}.html`),
        ContentType: 'text/html',
        ACL: 'public-read'
    }
    s3.upload(params, function(err,data){
        if(err){
            throw err
        }
        console.log(`File uploaded successfully. ${data.Location}`);
    })
}
function uploadMutantToS3(){
    var params = {
        Bucket : "mutantes",
        Key: `mutantes.json`,
        Body: fs.createReadStream(reports),
        ContentType: 'application/json',
        ACL: 'public-read'
    }
    s3.upload(params, function(err,data){
        if(err){
            throw err
        }
        console.log(`File uploaded successfully. ${data.Location}`);
    })
}