var data = [["test","4",""],["casa","4",""]]

for(let i = 0; i < 4;i++){
  let teste = Number(data[0][2]) + Number(data[0][0].charCodeAt(i))
  data[0][2] = teste
}

for(let i = 0; i < 4;i++){
  let teste = Number(data[1][2]) + Number(data[1][0].charCodeAt(i))
  data[1][2] = teste
}