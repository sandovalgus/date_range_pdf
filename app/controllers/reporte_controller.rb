class ReporteController < ApplicationController
  def index
  	@blogs = Blog.all
  end
   def pdf

  date1 = Date.civil(*params[:fecha1].sort.map(&:last).map(&:to_i))
  date2 = Date.civil(*params[:fecha2].sort.map(&:last).map(&:to_i))
 @records =  Blog.where('fecha BETWEEN ? AND ?', date1, date2)

          respond_to do |format|
          format.html
          format.pdf do 
            render :pdf         => "Presupuesto",
            :template  => "reporte/pdf",
            :layout => 'pdf.html',   
            :page_size => 'A4',
            :dpi=>'72',
             title: 'Presupuesto', 

            :margin => {:top => 20, :bottom =>10 }
          
      end
    end
  end
end
