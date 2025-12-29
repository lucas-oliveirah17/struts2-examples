package br.com.struts2.action;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import br.com.struts2.dao.UsuarioDAO;
import br.com.struts2.model.Usuario;

public class UsuarioAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    
    private Usuario usuario;
    private List<Usuario> listaUsuarios;
    private Integer idUsuario; 

    private UsuarioDAO dao = new UsuarioDAO();

    public String execute() {
        try {
            listaUsuarios = dao.findAll();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Erro ao listar usuários: " + e.getMessage());
            return ERROR;
        }
    }

    public String novo() {
        usuario = new Usuario();
        return INPUT;
    }

    public String salvar() {
        try {
            dao.save(usuario);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Erro ao salvar: " + e.getMessage());
            return INPUT;
        }
    }

    public String editar() {
        try {
            usuario = dao.findById(idUsuario);
            return INPUT;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }

    public String excluir() {
        try {
            dao.delete(idUsuario);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public List<Usuario> getListaUsuarios() {
		return listaUsuarios;
	}

	public void setListaUsuarios(List<Usuario> listaUsuarios) {
		this.listaUsuarios = listaUsuarios;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
    
    
}