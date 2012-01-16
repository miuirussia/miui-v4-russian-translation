.class Lcom/google/common/base/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/lang/Iterable;


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    .line 287
    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 301
    instance-of v0, p1, Lcom/google/common/base/Predicates$AndPredicate;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lcom/google/common/base/Predicates$AndPredicate;

    .line 303
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    iget-object v1, p1, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->c(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 294
    const/4 v0, -0x1

    .line 295
    iget-object v1, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

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

    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 298
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "And("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->fC()Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

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
