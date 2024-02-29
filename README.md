# OpenAIClient Swift Library

## Overview
The OpenAIClient Swift library is designed to simplify interactions with OpenAI's API, providing a straightforward way to integrate advanced natural language processing and generative AI capabilities into your Swift applications. This library supports a variety of operations, including chat completions, speech generation and transcription, and image generation using DALL·E 3.

## Features
- Chat completion requests with GPT models, including context handling for ongoing conversations.
- Speech synthesis (text-to-speech) and audio transcriptions using specified models.
- Generation of images using DALL·E 3 with customizable parameters.
- Support for handling multipart/form-data requests until native support is introduced in swift-openapi-runtime.

## Requirements
- iOS 13.0+ / macOS 10.15+
- Swift 5.3+
- Xcode 12.0+

## Installation
Currently, the library can be integrated into your project by cloning the repository and manually adding the source files to your project. Future updates will include support for Swift Package Manager for easier integration.

## Usage

### Initializing the Client
```swift
import OpenAIClient

let apiKey = "your_openai_api_key"
let openAIClient = OpenAIClient(apiKey: apiKey)

// Making a Chat Completion Request
let prompt = "Hello, who won the world series in 2020?"
let response = try await openAIClient.promptChatGPT(prompt: prompt, model: .gpt_4, assistantPrompt: "You are a helpful assistant")
print(response)

// Generating Speech from Text
let input = "Hello, world!"
let data = try await openAIClient.generateSpeechFrom(input: input, model: .tts_1, voice: .alloy, format: .aac)
// Use the resulting data for playback

// Transcribing Audio
let audioData: Data = ... // Your audio data
let transcription = try await openAIClient.generateAudioTranscriptions(audioData: audioData)
print(transcription)

// Generating an Image with DALL·E 3
let prompt = "A futuristic city skyline"
let image = try await openAIClient.generateDallE3Image(prompt: prompt)
// Use the resulting image URL or data as needed

```

## Contributing
Contributions are welcome! If you have suggestions for improvements or encounter any issues, please feel free to submit an issue or pull request.

## License
This library is released under the MIT License. See the LICENSE file for details.

## Author
Vito Verrastro

For more information or to contact the author, please visit [vverrastro](https://github.com/vverrastro).
