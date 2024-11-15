const fs = require('fs')
const path = require('path')

function get_readme_path(dir) {
  let res = []  
  const files = fs.readdirSync(dir)
  files.forEach( filename => {
    const filepath = path.join(dir, filename)
    const stats = fs.statSync(filepath)
    if (stats.isDirectory() && filename.startsWith('level')) {
      res.push( ... get_readme_path(filepath))
    } else if (stats.isFile() && filename.endsWith('README.mdx') && ! filename.endsWith('cfo/README.mdx')) {
      res.push(filepath)
      console.log(filepath)
    }
  })
  return res
}

function go() {
  let content = ''
  const readmes = get_readme_path(__dirname)

  readmes.forEach(path => {
    content = '\n\n' + fs.readFileSync(path, 'utf-8')
    // content = '\n\n' + content
  })

  return content
}

const README = go()
console.log(README)
// console.log('hello, world')
