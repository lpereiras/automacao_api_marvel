#Importa a biblioteca instalada via terminal 
# from faker import Faker
# faker = Faker()
#O .faker gera um elemento randomico que pode ser utilizado em determinadas situacoes
#Metodo que retorna um objeto com dados inseridos

def factory_spiderMan():
    return {
        "name": "Peter Parker",
	    "aliases": "Homem Aranha",
	    "age": 25,
	    "team": "Vingadores",
	    "active": True
    }

def factory_tonyStark():
    return {
        "name": "Tony Stark",
	    "aliases": "Homem de Ferro",
	    "age": 45,
	    "team": "Vingadores",
	    "active": False
    }

	