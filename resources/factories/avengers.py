#Importa a biblioteca instalada via terminal 
# from faker import Faker
# faker = Faker()
#O .faker gera um elemento randomico que pode ser utilizado em determinadas situacoes
#Metodo que retorna um objeto com dados inseridos

def factory_peterParker():
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

def factory_steveRogers():
    return {
        "name": "Steve Rogers",
	    "aliases": "Capitão América",
	    "age": 40,
	    "team": "Vingadores",
	    "active": True
    }

def factory_wandaDjango():
    return {
        "name": "Wanda Django",
	    "aliases": "Feiticeira Escarlate",
	    "age": 32,
	    "team": "Vingadores",
	    "active": True
	}
	