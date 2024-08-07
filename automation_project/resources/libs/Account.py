from faker import Faker

fake = Faker('pt_BR')

def generateFakeAccount():
    account = {
        "name": fake.name(),
        "email": fake.email(),
        "cpf": fake.cpf()
    }
    return account
