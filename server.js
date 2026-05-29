// Auto-redirect script for TIMIWAY Smart
// This handles the case where the user accidentally runs `node server.js` from the outer TIFA folder instead of the backend folder.

console.log("\n========================================================");
console.log(" 🚀 TIMIWAY SMART - SYSTEM AUTO-CORRECTION TRIGGERED");
console.log("========================================================");
console.log("ℹ️  Notice: You ran the server from the outer TIFA folder.");
console.log("✅ Action: Automatically redirecting to the correct backend directory...\n");

const path = require('path');
const { spawn } = require('child_process');

const backendDir = path.join(__dirname, 'TIMIWAY_Smart', 'backend');

try {
    process.chdir(backendDir);
    
    const serverProcess = spawn('node', ['server.js'], { 
        stdio: 'inherit',
        shell: true 
    });
    
    serverProcess.on('error', (err) => {
        console.error("❌ Failed to start the TIMIWAY server.");
        console.error(err);
    });

} catch (err) {
    console.error("❌ Critical Error: Could not locate the TIMIWAY_Smart/backend directory!", err);
}
