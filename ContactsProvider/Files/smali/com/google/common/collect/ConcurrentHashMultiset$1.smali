.class Lcom/google/common/collect/ConcurrentHashMultiset$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "ConcurrentHashMultiset.java"


# instance fields
.field final synthetic bj:Ljava/util/Set;

.field final synthetic ll:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->ll:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->bj:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->bj:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->bj:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 357
    :catch_0
    move-exception v1

    goto :goto_0

    .line 355
    :catch_1
    move-exception v1

    goto :goto_0
.end method
