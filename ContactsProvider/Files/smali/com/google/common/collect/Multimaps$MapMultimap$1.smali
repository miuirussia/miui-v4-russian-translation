.class Lcom/google/common/collect/Multimaps$MapMultimap$1;
.super Ljava/util/AbstractSet;
.source "Multimaps.java"


# instance fields
.field final synthetic hn:Ljava/lang/Object;

.field final synthetic na:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1;->hn:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 981
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
