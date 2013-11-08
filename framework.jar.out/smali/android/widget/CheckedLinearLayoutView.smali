.class public Landroid/widget/CheckedLinearLayoutView;
.super Landroid/widget/LinearLayout;
.source "CheckedLinearLayoutView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CheckedLinearLayoutView"


# instance fields
.field private checkbox:Landroid/widget/CheckedTextView;

.field private imageView:Landroid/widget/ImageView;

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    const-string v0, "CheckedLinearLayoutView"

    const-string v1, "isChecked - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/CheckedLinearLayoutView;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/CheckedLinearLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    :cond_0
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/ImageView;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Landroid/widget/CheckedLinearLayoutView;->imageView:Landroid/widget/ImageView;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const-string v0, "CheckedLinearLayoutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked - checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/CheckedLinearLayoutView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public toggle()V
    .locals 2

    .prologue
    const-string v0, "CheckedLinearLayoutView"

    const-string v1, "toggle - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CheckedLinearLayoutView;->checkbox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    :cond_0
    return-void
.end method
