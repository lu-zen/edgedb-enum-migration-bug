module default {
scalar type TicketStatus extending enum<pending_assignment, Open, Closed>;

type Ticket {
    property status -> TicketStatus {
        default := TicketStatus.pending_assignment;
    }
}
}
