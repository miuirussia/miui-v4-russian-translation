.class public Lcom/android/providers/contacts/ProjectionMap$Builder;
.super Ljava/lang/Object;
.source "ProjectionMap.java"


# instance fields
.field private aV:Lcom/android/providers/contacts/ProjectionMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/providers/contacts/ProjectionMap;

    invoke-direct {v0}, Lcom/android/providers/contacts/ProjectionMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    return-void
.end method


# virtual methods
.method public V()Lcom/android/providers/contacts/ProjectionMap;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    invoke-static {v1, v0}, Lcom/android/providers/contacts/ProjectionMap;->a(Lcom/android/providers/contacts/ProjectionMap;[Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    return-object v0
.end method

.method public a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 4
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/android/providers/contacts/ProjectionMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    iget-object v3, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/android/providers/contacts/ProjectionMap;->a(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/providers/contacts/ProjectionMap;->a(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap$Builder;->aV:Lcom/android/providers/contacts/ProjectionMap;

    invoke-static {v0, p1, p1}, Lcom/android/providers/contacts/ProjectionMap;->a(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p0
.end method
