.class public abstract Lcom/google/common/collect/ImmutableList;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static M(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static dO()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->wh:Lcom/google/common/collect/EmptyImmutableList;

    return-object v0
.end method

.method public static varargs f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter

    .prologue
    .line 193
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->g([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->dO()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_1
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs g([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 340
    array-length v1, p0

    new-array v3, v1, [Ljava/lang/Object;

    .line 342
    array-length v4, p0

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 343
    if-nez v5, :cond_0

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    add-int/lit8 v2, v1, 0x1

    aput-object v5, v3, v1

    .line 342
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 348
    :cond_1
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract b(II)Lcom/google/common/collect/ImmutableList;
.end method

.method public cG()Lcom/google/common/collect/ImmutableList;
    .locals 0

    .prologue
    .line 357
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract s()Lcom/google/common/collect/UnmodifiableIterator;
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->b(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/google/common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
