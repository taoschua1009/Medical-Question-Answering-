
EXPERT_QUERY = {
    "Definition": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_DEFINITION]->(d:Definition)
RETURN d.name AS definition;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_DEFINITION]->(d:Definition)-[:CONTEXT]->(ctx)
RETURN collect(d.name) AS definition;
'''
    },

    "Complication": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_COMPLICATION]->(c:Complication)
RETURN c.name AS complication;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_COMPLICATION]->(c:Complication)-[:CONTEXT]->(ctx)
RETURN collect(c.name) AS complications;
'''
    },

    "Treatment": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_TREATMENT]->(t:Treatment)
RETURN t.name AS treatment;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_TREATMENT]->(t:Treatment)-[:CONTEXT]->(ctx)
RETURN collect(t.name) AS treatments;
'''
    },

    "Symptom": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_SYMPTOM]->(s:Symptom)
RETURN s.name AS symptom;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_SYMPTOM]->(s:Symptom)-[:CONTEXT]->(ctx)
RETURN collect(s.name) AS symptoms;
'''
    },

    "Cause": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_CAUSE]->(c:Cause)
RETURN c.name AS cause;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_CAUSE]->(c:Cause)-[:CONTEXT]->(ctx)
RETURN collect(c.name) AS causes;
'''
    },

    "Advice": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_ADVICE]->(ad:Advice)
RETURN ad.name AS advice;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_ADVICE]->(ad:Advice)-[:CONTEXT]->(ctx)
RETURN collect(ad.name) AS advice;
'''
    },

    "Population": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:AFFECTS]->(p:Population)
RETURN p.name AS population;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:AFFECTS]->(p:Population)-[:CONTEXT]->(ctx)
RETURN collect(p.name) AS population;
'''
    },

    "Application": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_APPLICATION]->(app:Application)
RETURN app.name AS application;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_APPLICATION]->(app:Application)-[:CONTEXT]->(ctx)
RETURN app.name AS application, ctx.name AS context;
'''
    },
    
    "RiskFactor": {
    "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_RISK_FACTOR]->(r:RiskFactor)
RETURN r.name AS risk_factor;
''',
    "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_RISK_FACTOR]->(r:RiskFactor)-[:CONTEXT]->(ctx)
RETURN collect(r.name) AS risk_factors;
'''
},

    "Prevention": {
    "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_PREVENTION]->(p:Prevention)
RETURN p.name AS prevention;
''',
    "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_PREVENTION]->(p:Prevention)-[:CONTEXT]->(ctx)
RETURN collect(p.name) AS preventions;
'''
},


    "SubDisease": {
    "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_SUBDISEASE]->(s:SubDisease)
RETURN s.name AS sub_disease;
''',
    "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_SUBDISEASE]->(s:SubDisease)-[:CONTEXT]->(ctx)
RETURN collect(s.name) AS sub_diseases;
'''
},

    "Detail": {
    "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_DETAIL]->(d:Detail)
RETURN d.name AS detail;
''',
    "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_DETAIL]->(d:Detail)-[:CONTEXT]->(ctx)
RETURN collect(d.name) AS details;
'''
},

}
