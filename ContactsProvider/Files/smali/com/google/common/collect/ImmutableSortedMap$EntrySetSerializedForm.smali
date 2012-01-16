.class Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 494
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
