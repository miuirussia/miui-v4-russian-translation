.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected R()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3014
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3022
    :goto_0
    return v2

    .line 3017
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->h(I)Ljava/lang/Object;

    move-result-object v0

    .line 3018
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3019
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->onTextContextMenuItem(I)Z

    .line 3021
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    goto :goto_0
.end method
