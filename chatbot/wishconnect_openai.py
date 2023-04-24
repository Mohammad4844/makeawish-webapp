import os
import sys
import openai
openai.api_key = "MY_API_KEY"

os.system("python3 -m openai tools fine_tunes.prepare_data -f 'data.jsonl' ")

os.system("python3 -m openai api fine_tunes.create -t 'data_prepared.jsonl' -m davinci ")


def generate_response(input_text):
    response = openai.Completion.create(
        engine="text-davinci-002",
        prompt="The following is a conversation with family of child and an AI assistant of the Make a Wish Foundation Georgia. "
               "This AI assistant helps parents of child to connect with organization and provide help in case of need.\n\n"
               "Human: Hello, can you help me with wish granting?\n"
               "AI: Yes, I'm an AI assistant. How can I help you today?\n"
               "Human: {}\nAI:".format(input_text),
        temperature=0.9,
        max_tokens=150,
        top_p=1,
        frequency_penalty=0.0,
        presence_penalty=0.6,
        stop=["\n", " Human:", " AI:"]
    )
    return response.choices[0].text.strip()

if __name__ == '__main__':
    input_text = sys.argv[1]
    output = generate_response(input_text)
    print(output)