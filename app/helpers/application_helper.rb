module ApplicationHelper
    LANG = [
        {
            id: '1',
            name: 'java',
            file_name: 'Main.java',
            header:
                "import java.io.*;\n\nclass Main {\n\tpublic static void main (String[] args) {\n\t\tSystem.out.println(\"Hello Java\");\n\t}\n}"
        },
        {
            id: '2',
            name: 'ruby',
            file_name: 'main.rb',
            header:
                "def do_something\n\tputs 'Hello World!'\nend\ndo_something"
        }
    ]
    
    def get_lang_header(lang_id)
        lang = LANG.find { |lang| lang[:id] == lang_id }
    end
end
