.class Lcom/android/internal/app/ExternalRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "ExternalRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ExternalRingtonePickerActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ExternalRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/ExternalRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->access$200(Lcom/android/internal/app/ExternalRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/ExternalRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->access$200(Lcom/android/internal/app/ExternalRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method
