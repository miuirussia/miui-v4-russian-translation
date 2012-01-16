.class Lcom/google/common/collect/Maps$ValueDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference$ValueDifference;


# instance fields
.field private final px:Ljava/lang/Object;

.field private final py:Ljava/lang/Object;


# virtual methods
.method public eU()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->px:Ljava/lang/Object;

    return-object v0
.end method

.method public eV()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->py:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 417
    instance-of v1, p1, Lcom/google/common/collect/MapDifference$ValueDifference;

    if-eqz v1, :cond_0

    .line 418
    check-cast p1, Lcom/google/common/collect/MapDifference$ValueDifference;

    .line 420
    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->px:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference$ValueDifference;->eU()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->py:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference$ValueDifference;->eV()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 423
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->px:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->py:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->px:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->py:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
