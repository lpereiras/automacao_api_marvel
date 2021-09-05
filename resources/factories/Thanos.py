#Importa a biblioteca instalada via terminal 
from faker import Faker
faker = Faker()

#Metodo que retorna um objeto com dados inseridos
def factory_thanos():

    return {
		#O .faker gera um nome randomico
        "name": faker.name(),
	    "aliases": "Thanos",
	    "age": 3000,
	    "team": "Ordem Negra",
	    "active": False
    }