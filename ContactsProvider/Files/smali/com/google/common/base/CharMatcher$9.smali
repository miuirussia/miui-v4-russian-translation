.class final Lcom/google/common/base/CharMatcher$9;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic oi:C


# virtual methods
.method public a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->oi:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/base/CharMatcher$9;->pN:Lcom/google/common/base/CharMatcher;

    :cond_0
    return-object p0
.end method

.method public a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->oi:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 402
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
