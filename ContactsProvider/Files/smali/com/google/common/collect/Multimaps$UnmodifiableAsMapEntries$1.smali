.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Multimaps.java"


# instance fields
.field final synthetic pn:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->pn:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected W()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->W()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->f(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
