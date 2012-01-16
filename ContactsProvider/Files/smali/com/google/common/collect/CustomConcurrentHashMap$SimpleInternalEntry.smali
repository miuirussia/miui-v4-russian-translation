.class Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field final ah:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

.field final hash:I

.field final key:Ljava/lang/Object;

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2155
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    .line 2156
    iput p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    .line 2157
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    .line 2158
    iput-object p4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->ah:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .line 2159
    return-void
.end method
