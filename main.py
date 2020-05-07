from hunspell import Hunspell

h = Hunspell("ko", hunspell_data_dir='ko')

if __name__ == "__main__":
    answer = h.spell("안녕하세요으")

    print(answer)
    answer2 = h.spell("안녕하세")
    print(answer2)

    answer3 = h.suggest("안녕하세요으")
    print(answer3)