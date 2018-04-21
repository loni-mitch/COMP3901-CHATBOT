import nltk
import mysql.connector
#from nltk import load_parser
#processes user query and produces a tree

#Used to get user name, will be modified later to get user name from login
def getuname(uname):
    return uname

#produces query given uname. MUST BE MODIFIED LATER
def proc_query(sent, uname):

    conn=mysql.connector.connect(host='localhost', user='root', passwd='', db='slb')
    cur=conn.cursor()

    uname1=getuname(uname)
    #splits sentences into words

    rlist=nltk.word_tokenize(sent)

    #tags each word with part of speech

    cp=nltk.load_parser('file:%s' % nltk.data.find('C:/Users/Deronic246/Desktop/file.fcfg'))

    #cp.format("deronic")

    trees = list(cp.parse(rlist))

    answer = trees[0].label()['SEM']

    answer = [s for s in answer if s]

    q = ' '.join(answer)

    g=q.format(uname1)


    return g

#executes query on slb database
def getresult(query):
    conn=mysql.connector.connect(host='localhost', user='root', passwd='', db='slb')
    cur=conn.cursor()
    if(conn.is_connected()):
        print ('Connection successful................\n')
        cur.execute(query)
        q=cur.fetchone()
        cur.close()
        conn.close()
        return q
    else:
        print ('Connection Failed................\n')
    
#concatenates query to response to give full response on question asked
def getfinalresponse(sent,p):
    
    rlist=nltk.word_tokenize(sent)
    cp=nltk.load_parser('file:%s' % nltk.data.find('C:/Users/Deronic246/Desktop/file2.fcfg'))
    trees = list(cp.parse(rlist))
    answer = trees[0].label()['SEM']
    answer = [s for s in answer if s]
    q = ' '.join(answer)
    g=q+p

    return g
