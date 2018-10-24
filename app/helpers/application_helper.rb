module ApplicationHelper
    LANG = [
        {
            id: '1',
            name: 'Ruby',
            file_name: 'main.rb',
            header:
                "def do_something\n\tputs 'Hello World!'\nend\ndo_something"
        },
        {
            id: '2',
            name: 'Java',
            file_name: 'Main.java',
            header:
                "import java.io.*;\n\nclass Main {\n\tpublic static void main (String[] args) {\n\t\tSystem.out.println(\"Hello Java\");\n\t}\n}"
        },
        {
            id: '3',
            name: 'Golang',
            file_name: 'main.go',
            header:
                "package main\nimport \"fmt\"\n\nfunc main(){\n  \n\tfmt.Printf(\"Hello\")\n}",
        },
        {
            id: '4',
            name: 'Clojure',
            file_name: 'main.clj',
            header:
                "(println \"Hello\")"
        }
    ]
    
    def get_lang_header(lang_id)
        lang = LANG.find { |lang| lang[:id] == lang_id }
    end

    def get_lang_list
        list = []
        LANG.each { |lang| list << { id: lang[:id], name: lang[:name] } }
        list
    end
end
