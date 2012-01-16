.class final Lcom/google/common/collect/ImmutableAsList;
.super Lcom/google/common/collect/RegularImmutableList;
.source "ImmutableAsList.java"


# instance fields
.field private final transient collection:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 35
    iput-object p2, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    .line 36
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method
