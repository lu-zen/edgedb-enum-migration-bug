CREATE MIGRATION m1s2iiin4awxnhdzrn5qp7upwqs6nv6dbyrmuuzjzizkrqq4oymtvq
    ONTO m1ihjbprow3sssjtgocyi63pfax73uw3eujgm5enpcgru5wzloktxa
{
  ALTER SCALAR TYPE default::TicketStatus EXTENDING enum<pending_assignment, Open, Closed>;
  ALTER TYPE default::Ticket {
      ALTER PROPERTY status {
          SET default := (default::TicketStatus.pending_assignment);
      };
  };
};
