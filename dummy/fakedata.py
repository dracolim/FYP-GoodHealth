from faker import Faker
fake = Faker()

fake.name()
# 'Lucy Cechtelar'

fake.address()
# '426 Jordy Lodge
#  Cartwrightshire, SC 88120-6700'

fake.text()
# 'Sint velit eveniet. Rerum atque repellat voluptatem quia rerum. Numquam excepturi
#  beatae sint laudantium consequatur. Magni occaecati itaque sint et sit tempore. Nesciunt
#  amet quidem. Iusto deleniti cum autem ad quia aperiam.
#  A consectetur quos aliquam. In iste aliquid et aut similique suscipit. Consequatur qui
#  quaerat iste minus hic expedita. Consequuntur error magni et laboriosam. Aut aspernatur
#  voluptatem sit aliquam. Dolores voluptatum est.
#  Aut molestias et maxime. Fugit autem facilis quos vero. Eius quibusdam possimus est.
#  Ea quaerat et quisquam. Deleniti sunt quam. Adipisci consequatur id in occaecati.
#  Et sint et. Ut ducimus quod nemo ab voluptatum.'


from random import random, randint
optionsDesignation = ["Senior Resident", "Junior Doctor"]
optionsDesignation[randint(0, len(optionsDesignation)-1)]    


for _ in range(5):
    name = fake.name()
    print("name: ", name)
    print("postalcode", fake.postcode())
    print("streetaddress", fake.street_address())
    print("street_name", fake.street_address())
    print("unit number", fake.building_number())
    print("building_number", fake.building_number())
    print("current_country: ", fake.current_country())
    print("contactno: ", fake.phone_number())
    print("date_time_between: ", fake.date_time_between())
    newname = ""
    for i in name:
        if i != " ":
            newname += i
    print("email: ", newname.lower() + "@gmail.com")
    print("------")