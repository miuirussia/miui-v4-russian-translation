.class Lcom/google/common/base/CharMatcher$15;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic sA:Lcom/google/common/base/CharMatcher$LookupTable;


# virtual methods
.method public a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$15;->sA:Lcom/google/common/base/CharMatcher$LookupTable;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher$LookupTable;->g(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 650
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
