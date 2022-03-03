mixin GqlQuery{
  static var productQuery = r'''
  query{
  products(first: 30){
    
		edges{
      node{
        id
        category{
          name
        }
        name
        media{
          url
        }
        thumbnail{
          url
        }

        pricing{
          onSale
          priceRange{
            start{
              currency
              gross{
                currency
                amount
              }
              tax{
                currency
                amount
              }
              net{
                amount
                currency
              }
            }
          }
          
        }
      }
    }
  }
}
''';
}