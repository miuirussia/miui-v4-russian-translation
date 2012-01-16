.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic tm:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;->tm:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ac()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;->ac()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 595
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
