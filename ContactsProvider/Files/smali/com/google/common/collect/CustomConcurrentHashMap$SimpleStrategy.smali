.class Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2104
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->a(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public D(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 2128
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2104
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->b(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic F(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2104
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->c(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic G(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 2104
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->d(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2108
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2112
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    iget v1, p2, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    iget-object v2, p2, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2119
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2104
    check-cast p3, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2104
    check-cast p2, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    check-cast p3, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->a(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V
    .locals 0
    .parameter

    .prologue
    .line 2142
    return-void
.end method

.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2116
    iput-object p2, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    .line 2117
    return-void
.end method

.method public b(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2131
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 1
    .parameter

    .prologue
    .line 2134
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->ah:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    return-object v0
.end method

.method public d(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)I
    .locals 1
    .parameter

    .prologue
    .line 2137
    iget v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    return v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2104
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->a(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2122
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2125
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
