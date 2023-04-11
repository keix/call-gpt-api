## Call OpenAI API (ChatGPT) with Common Lisp.

This is the API client for the OpenAI API written in Common Lisp.


### Version 1.x is a simple implementation. 

- Call the API with JSON.
- Compatible with most models.

### Get started.

- This program depends on Quicklisp.
- This program has been tested with SBCL (v2.2.5)

Clone this repository with Git then set environmental variables.  

```
 $ git clone https://github.com/keix/call-gpt-api.git
 $ export OPENAI_API_KEY=<YOUR_API_KEY>
```

Installation is completed. Now, let's call the API!

### Usage.

Replace \*model\* variable in settings.lisp with the model of your chiose, and then run the following command.

```
 $ ./call-gpt-api
```
