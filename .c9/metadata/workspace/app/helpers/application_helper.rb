{"filter":false,"title":"application_helper.rb","tooltip":"/app/helpers/application_helper.rb","undoManager":{"mark":15,"position":15,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":16,"column":0},"end":{"row":16,"column":27}},"text":"    def tickets_left(event)"},{"action":"insertText","range":{"start":{"row":16,"column":27},"end":{"row":17,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":17,"column":0},"end":{"row":19,"column":0}},"lines":["        ordered = sum(Order.where(:event_id == event.id).all.tickets_purchased)","        event.total_tickets - ordered"]},{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":7}},"text":"    end"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":15,"column":5},"end":{"row":16,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":16,"column":0},"end":{"row":16,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":16,"column":0},"end":{"row":16,"column":2}},"text":"  "},{"action":"removeText","range":{"start":{"row":17,"column":0},"end":{"row":17,"column":2}},"text":"  "},{"action":"removeText","range":{"start":{"row":18,"column":0},"end":{"row":18,"column":2}},"text":"  "},{"action":"removeText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":2}},"text":"  "},{"action":"removeText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":35},"end":{"row":20,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":6}},"text":"      "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":21,"column":5},"end":{"row":22,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":22,"column":0},"end":{"row":22,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":4}},"text":"    "},{"action":"removeText","range":{"start":{"row":19,"column":35},"end":{"row":20,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":77},"end":{"row":18,"column":78}},"text":"."}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":78},"end":{"row":18,"column":79}},"text":"s"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":79},"end":{"row":18,"column":80}},"text":"u"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":18,"column":78},"end":{"row":18,"column":80}},"text":"su"},{"action":"insertText","range":{"start":{"row":18,"column":78},"end":{"row":18,"column":81}},"text":"sum"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":18,"column":77},"end":{"row":18,"column":81}},"text":".sum"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":5}},"text":"  end"},{"action":"removeLines","range":{"start":{"row":17,"column":0},"end":{"row":20,"column":0}},"nl":"\n","lines":["  def tickets_left(event)","      ordered = sum(Order.where(:event_id == event.id).all.tickets_purchased)","      event.total_tickets - ordered"]}]}],[{"group":"doc","deltas":[{"action":"removeLines","range":{"start":{"row":16,"column":0},"end":{"row":17,"column":0}},"nl":"\n","lines":[""]}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":15,"column":5},"end":{"row":16,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":2}},"text":"  "},{"action":"removeText","range":{"start":{"row":10,"column":2},"end":{"row":11,"column":0}},"text":"\n"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":10,"column":2},"end":{"row":10,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1415218196067,"hash":"1ab06717cbb4300f572f83f132900868ef3a3cac"}