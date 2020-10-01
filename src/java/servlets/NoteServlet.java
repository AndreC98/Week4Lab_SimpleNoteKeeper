package servlets;

import Models.Note;
import java.io.*;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Andre
 */
public class NoteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String line;
        String fileTitle;
        String fileBody;
        ArrayList fileContext = new ArrayList();
        String path = getServletContext().getRealPath("/WEB-INF/note.txt");
        // to read files
        BufferedReader br = new BufferedReader(new FileReader(new File(path)));
        while((line = br.readLine()) != null){
            fileContext.add(line);
        }
        fileTitle = (String)fileContext.get(0);
        fileBody = (String)fileContext.get(1);
        Note newNote = new Note(fileTitle, fileBody);
        request.setAttribute("note", newNote);
        
        getServletContext().getRequestDispatcher("/WEB-INF/ViewNote.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
