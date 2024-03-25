package com.servlet;


import java.io.IOException;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.bus;
import com.helper.SessionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class addbus extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SessionFactory factory;

    @Override
    public void init() throws ServletException {
        super.init();
        factory = SessionProvider.getSessionFactory();
    }

    @Override
    public void destroy() {
        super.destroy();
        SessionProvider.shutdown();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        listBuses(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        addBus(request, response);
        listBuses(request, response);
    }

    private void addBus(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String busName = request.getParameter("busName");
        String busNumber = request.getParameter("busNumber");
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        String contactNumber = request.getParameter("contactNumber");
        String busType = request.getParameter("busType");
        String seatCapacity = request.getParameter("seatCapacity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");
        String fare = request.getParameter("fare");
        String duration = request.getParameter("duration");
        String pickupPoint = request.getParameter("pickupPoint");
        String dropPoint = request.getParameter("dropPoint");
        boolean mTicketSupport = request.getParameter("mTicketSupport") != null;
        boolean deepCleanedBuses = request.getParameter("deepCleanedBuses") != null;
        boolean chargingPoint = request.getParameter("chargingPoint") != null;
        boolean pillow = request.getParameter("pillow") != null;
        boolean usbPort = request.getParameter("usbPort") != null;
        boolean readingLight = request.getParameter("readingLight") != null;

        bus b = new bus();
        b.setBusName(busName);
        b.setBusNumber(busNumber);
        b.setSource(source);
        b.setDestination(destination);
        b.setContactNumber(contactNumber);
        b.setBusType(busType);
        b.setSeatCapacity(seatCapacity);
        b.setDepartureTime(departureTime);
        b.setArrivalTime(arrivalTime);
        b.setFare(fare);
        b.setDuration(duration);
        b.setPickupPoint(pickupPoint);
        b.setDropPoint(dropPoint);
        b.setmTicketSupport(mTicketSupport ? "Yes" : "No");
        b.setDeepCleanedBuses(deepCleanedBuses ? "Yes" : "No");
        b.setChargingPoint(chargingPoint ? "Yes" : "No");
        b.setPillow(pillow ? "Yes" : "No");
        b.setUsbPort(usbPort ? "Yes" : "No");
        b.setReadingLight(readingLight ? "Yes" : "No");

        saveBus(b);
        
     // After saving the bus, fetch the updated list of buses
        List<bus> listOfBuses = getAllBuses();
        request.setAttribute("listOfBuses", listOfBuses);
    }

    

	private void saveBus(bus b) {
        Session session = factory.getCurrentSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.save(b);
            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();

        } finally {
            session.close();
        }
    }
	
	private List<bus> getAllBuses() {
        Session session = factory.getCurrentSession();
        Transaction transaction = null;
        List<bus> listOfBuses = null;

        try {
            transaction = session.beginTransaction();
            listOfBuses = session.createQuery("FROM bus", bus.class).list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }

        return listOfBuses;
    }


    private void listBuses(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Session session = null;

        try {
            session = factory.getCurrentSession();
            session.beginTransaction();

            List<bus> listOfBuses = session.createQuery("From bus", bus.class).list();

            request.setAttribute("listOfBuses", listOfBuses);

            request.getRequestDispatcher("busdetails.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }
}
