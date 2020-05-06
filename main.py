from hunspell import Hunspell

h = Hunspell("ko", hunspell_data_dir='ko')

if __name__ == "__main__":
    answer = h.spell("안녕하세요으")
    print(answer)
