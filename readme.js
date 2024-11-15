const fs = require('fs')
const path = require('path')

function get_readme_path(dir) {
  let res = []  
  const files = fs.readdirSync(dir)
  files.forEach(file => {
    const filepath = path.join(dir, file)
    const stats = fs.statSync(filepath)
    if (stats.isDirectory() && file.startsWith('level')) {
      res.push( ... get_readme_path(filepath))
    } else if (stats.isFile() && file === 'README.mdx') {
      res.push(filepath)
    }
  })
  return res
}

function go() {
  let content = ''
  const readmes = get_readme_path(__dirname)

  readmes.forEach(path => {
    const content = '\n\n' + fs.readFileSync(path, 'utf-8')
    // content = '\n\n' + content
  })

  return content
}

const README = go()
console.log(README)
console.log('hello, world')
