.class Lcom/google/common/base/CharMatcher$Or;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field dM:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 594
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$Or;->dM:Ljava/util/List;

    .line 595
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 2
    .parameter

    .prologue
    .line 607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$Or;->dM:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public a(C)Z
    .locals 2
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$Or;->dM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    .line 599
    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 590
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
