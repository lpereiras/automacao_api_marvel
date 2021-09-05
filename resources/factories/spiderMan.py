#Importa a biblioteca instalada via terminal 
# from faker import Faker
# faker = Faker()

#Metodo que retorna um objeto com dados inseridos
def factory_spiderMan():

    return {
		#O .faker gera um nome randomico
        "name": "Peter Parker",
	    "aliases": "Homem Aranha",
	    "age": 25,
	    "team": "Vingadores",
	    "active": True
    }