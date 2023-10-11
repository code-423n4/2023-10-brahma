import {readFileSync, writeFileSync} from "fs";

const FILE_PATH = "./results.sarif";

// SARIF 2.1.0 	    SonarQube severity
// error	        critical
// warning	        major
// note	            minor
// none	            info
// empty or null	major (default)

const SEVERITY_MAPPING = {
    "8.0": "error",
    "4.0": "warning",
    "3.0": "note",
    "2.0": "note",
    "0.0": "none",
};

try {
    const sarif = JSON.parse(readFileSync(FILE_PATH).toString());
    const run = sarif.runs[0];
    const rules: Array<any> = run.tool.driver.rules;

    let ruleLog = {};

    rules.forEach((it) => {
        ruleLog[it.id] = it.properties["security-severity"];
    });

    for (let result of sarif.runs[0].results) {
        result.level = SEVERITY_MAPPING[ruleLog[result.ruleId]];
    }

    writeFileSync(FILE_PATH, JSON.stringify(sarif, null, 2));
    console.log("SLITHER SARIF SEVERITY FIXED");
} catch (e) {
    throw e;
}
