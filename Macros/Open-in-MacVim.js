const child_process = require('child_process')

module.exports = async (params) => {
  const basePath = app.vault.adapter.basePath.replaceAll("\\","/")
  const filePath = app.workspace.activeLeaf.view.file.path
  //console.log(`gvim ${basePath}/${filePath}`)
  await child_process.exec(`gvim ${basePath}/${filePath}`)
}
