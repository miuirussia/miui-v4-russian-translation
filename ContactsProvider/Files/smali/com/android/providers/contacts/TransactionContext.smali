.class public Lcom/android/providers/contacts/TransactionContext;
.super Ljava/lang/Object;
.source "TransactionContext.java"


# instance fields
.field private final oM:Z

.field private oN:Ljava/util/HashMap;

.field private oO:Ljava/util/HashSet;

.field private oP:Ljava/util/HashSet;

.field private oQ:Ljava/util/HashSet;

.field private oR:Ljava/util/HashSet;

.field private oS:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oN:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oO:Ljava/util/HashSet;

    .line 37
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oP:Ljava/util/HashSet;

    .line 38
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oQ:Ljava/util/HashSet;

    .line 39
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oR:Ljava/util/HashSet;

    .line 40
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oS:Ljava/util/HashMap;

    .line 43
    iput-boolean p1, p0, Lcom/android/providers/contacts/TransactionContext;->oM:Z

    .line 44
    return-void
.end method


# virtual methods
.method public A(J)Z
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oN:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(JLcom/android/providers/contacts/AccountWithDataSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oN:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public b(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oS:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oO:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 109
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oP:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 111
    return-void
.end method

.method public eF()Ljava/util/Set;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public eG()Ljava/util/Set;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oO:Ljava/util/HashSet;

    return-object v0
.end method

.method public eH()Ljava/util/Set;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oP:Ljava/util/HashSet;

    return-object v0
.end method

.method public eI()Ljava/util/Set;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oQ:Ljava/util/HashSet;

    return-object v0
.end method

.method public eJ()Ljava/util/Set;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oR:Ljava/util/HashSet;

    return-object v0
.end method

.method public eK()Ljava/util/Set;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public eL()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oQ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oR:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 116
    return-void
.end method

.method public v(J)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oO:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public w(J)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oP:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public x(J)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oQ:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public y(J)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oR:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public z(J)Lcom/android/providers/contacts/AccountWithDataSet;
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->oN:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    return-object v0
.end method
