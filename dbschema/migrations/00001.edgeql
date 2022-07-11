CREATE MIGRATION m1ihjbprow3sssjtgocyi63pfax73uw3eujgm5enpcgru5wzloktxa
    ONTO initial
{
  CREATE SCALAR TYPE default::TicketStatus EXTENDING enum<Pending, Open, Closed>;
  CREATE TYPE default::Ticket {
      CREATE PROPERTY status -> default::TicketStatus {
          SET default := (default::TicketStatus.Pending);
      };
  };
};
