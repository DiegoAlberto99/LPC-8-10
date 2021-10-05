import requests
from bs4 import BeautifulSoup



def get_soup(url: str) -> BeautifulSoup:
    response = requests.get(url)
    salida = (str(BeautifulSoup(response.content, "html.parser")))
    return salida



def get_soup2(url: str) -> BeautifulSoup:
    response = requests.get(url)
    return BeautifulSoup(response.content, "html.parser")



def get_img(url):
    soup = get_soup2(url)
    images = soup.find_all("img")
    t = [{"src": image.get("src"), "alt": image.get("alt")} for image in images]
    return t





if __name__ == "__main__":
    response = get_soup('https://es.wikipedia.org/wiki/Universo')
    with open("Informacion.txt", "w") as F:
      F.write(response)



    response2 = get_img('https://www.google.com/search?q=El+universo&tbm=isch&ved=2ahUKEwi3172ll7LzAhXrjK0KHRhqBPsQ2-cCegQIABAA&oq=El+universo&gs_lcp=CgNpbWcQAzIICAAQgAQQsQMyCAgAEIAEELEDMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6BwgjEO8DECc6BwgAELEDEEM6BAgAEEM6CggjEO8DEOoCECc6BAgAEAM6CwgAEIAEELEDEIMBOggIABCxAxCDAVCWVlitoQFggqMBaAVwAHgDgAG-AogBzhaSAQcwLjguNC4ymAEAoAEBqgELZ3dzLXdpei1pbWewAQrAAQE&sclient=img&ei=x7JbYffXCeuZtgWY1JHYDw&bih=662&biw=1280')
    with open("imagenes.txt", "w") as a:
      for row in response2:
        a.write(str(row) + '\n')
        


