.class public Lcom/google/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# instance fields
.field private final qq:Lcom/google/common/collect/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->qq:Lcom/google/common/collect/Multimap;

    .line 144
    return-void
.end method
