.class Lcom/google/common/collect/LinkedListMultimap$4$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic jl:Lcom/google/common/collect/LinkedListMultimap$Node;

.field final synthetic jm:Lcom/google/common/collect/LinkedListMultimap$4$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$4$1;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->jm:Lcom/google/common/collect/LinkedListMultimap$4$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->jl:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->jl:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->jl:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->jl:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 792
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->jl:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 793
    return-object v0
.end method
