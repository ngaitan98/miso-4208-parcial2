const shell = require("shelljs");
shell.exec("mkdir reports");
for (i = 1; i < 4548; i++) {
    console.log("Mutante "+i+" iniciando.")
    shell.exec("calabash-android resign ../apks/com.evancharlton.mileage-mutant"+i+"/com.evancharlton.mileage_3110-aligned-debugSigned.apk")
    shell.exec("adb uninstall com.evancharlton.mileage")
    shell.exec("calabash-android run ../apks/com.evancharlton.mileage-mutant"+i+"/com.evancharlton.mileage_3110-aligned-debugSigned.apk --format html --out reports/report"+i+".html")
    console.log("Mutante "+i+" finalizado.")
}