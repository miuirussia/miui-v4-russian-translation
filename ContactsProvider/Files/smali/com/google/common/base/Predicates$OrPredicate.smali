.class Lcom/google/common/base/Predicates$OrPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/lang/Iterable;


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    .line 323
    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 337
    instance-of v0, p1, Lcom/google/common/base/Predicates$OrPredicate;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Lcom/google/common/base/Predicates$OrPredicate;

    .line 339
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    iget-object v1, p1, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->c(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    .line 332
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->fC()Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->j(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
