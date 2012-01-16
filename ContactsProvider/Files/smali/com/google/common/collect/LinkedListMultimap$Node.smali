.class final Lcom/google/common/collect/LinkedListMultimap$Node;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"


# instance fields
.field final key:Ljava/lang/Object;

.field og:Lcom/google/common/collect/LinkedListMultimap$Node;

.field qj:Lcom/google/common/collect/LinkedListMultimap$Node;

.field sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

.field sR:Lcom/google/common/collect/LinkedListMultimap$Node;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    .line 115
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 116
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
