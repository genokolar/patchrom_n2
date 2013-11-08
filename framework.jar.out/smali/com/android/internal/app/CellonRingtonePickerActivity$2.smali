.class Lcom/android/internal/app/CellonRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "CellonRingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/CellonRingtonePickerActivity;->addMusicLibraryItem(Landroid/widget/ListView;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "addMusicLibraryItem - onCLick -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.LIBRARY_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ringtone_picker"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/app/CellonRingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
