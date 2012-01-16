.class public Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient cv:Lcom/google/common/collect/ImmutableMap;

.field private transient cw:Lcom/google/common/collect/ImmutableSet;

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    .line 164
    iput p2, p0, Lcom/google/common/collect/ImmutableMultiset;->size:I

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .parameter

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 345
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fE()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    .line 346
    const-wide/16 v1, 0x0

    .line 347
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 351
    if-gtz v6, :cond_0

    .line 352
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 355
    int-to-long v5, v6

    add-long/2addr v1, v5

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    sget-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->oE:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->dW()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->oF:Lcom/google/common/collect/Serialization$FieldSetter;

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 361
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 338
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 339
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cw:Lcom/google/common/collect/ImmutableSet;

    .line 280
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cw:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 256
    :goto_0
    return v0

    .line 244
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_4

    .line 245
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 246
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    move v0, v2

    .line 247
    goto :goto_0

    .line 249
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 250
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-eq v4, v0, :cond_2

    move v0, v2

    .line 251
    goto :goto_0

    :cond_3
    move v0, v1

    .line 254
    goto :goto_0

    :cond_4
    move v0, v2

    .line 256
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$1;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset;->size:I

    return v0
.end method

.method public t()Ljava/util/Set;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->cp()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 364
    return-object p0
.end method
