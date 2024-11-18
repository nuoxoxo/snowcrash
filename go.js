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
    } else if (stats.isFile() && filename.endsWith('README.mdx') && ! filepath.endsWith('cfo/README.mdx')) {
      res.push(filepath)
      // console.log(filepath)
    }
  })

  return res
}


function get_readme_content() {

  let content = fs.readFileSync(__dirname + '/tokens.mdx', 'utf-8')

  content += 'Level '
  let n = 11
  for (let i = 0; i < n; i++) {
    num = i.toString()
    content += '[' + num + '](https://github.com/nuoxoxo/snowcrash/tree/main?tab=readme-ov-file#0' + num + ')'
    if (i < n - 1 ) { content += ' - ' }
  }

  const readmes = get_readme_path(__dirname)
  // console.log(__dirname)
  // /home/runner/work/cfo/cfo

  readmes.forEach(path => {
    content += '\n\n' + fs.readFileSync(path, 'utf-8')// + '\n\n' + content
  })
  return content
}


const README = get_readme_content()
console.log(README)
// console.log('hello, world')
