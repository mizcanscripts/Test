<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>IronBrew1 | MZXHUB</title>
<meta name="description" content="IronBrew1 — ironbrew1 obfuscator for Luau.">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Cpath d='M16 3c-2.5 4.5-6.5 7.5-6.5 12.5a6.5 6.5 0 0 0 13 0C22.5 10.5 18.5 7.5 16 3z' fill='%23fff'/%3E%3Cpath d='M3 27c3.5-1.5 6.5-1.5 10 0s6.5 1.5 10 0 6.5-1.5 6 0' stroke='%23fff' stroke-width='1.4' fill='none'/%3E%3C/svg%3E">
<style>
  :root{
    --bg:#000; --ink:#fff; --dim:#666;
    --line:#161616; --line2:#242424;
    --bad:#ff5555;
    --mono:ui-monospace,"JetBrains Mono","SF Mono",Menlo,Consolas,monospace;
  }
  *{box-sizing:border-box}
  html,body{height:100%;margin:0}
  body{background:var(--bg);color:var(--ink);font-family:var(--mono);font-size:12.5px;line-height:1.5;-webkit-font-smoothing:antialiased;overflow:hidden}
  .chrome{display:flex;align-items:stretch;height:44px;border-bottom:1px solid var(--line);background:#000;user-select:none}
  .brand{display:flex;align-items:center;gap:10px;padding:0 18px;border-right:1px solid var(--line)}
  .brand svg{width:20px;height:20px;display:block;flex-shrink:0}
  .brand .txt{display:flex;align-items:baseline;gap:2px;font-size:15px;letter-spacing:-0.3px;font-weight:600}
  .brand .txt .one{color:var(--dim);font-weight:400;font-size:13px;margin-left:2px}
  .brand .sub{color:var(--dim);font-size:10px;letter-spacing:1.5px;text-transform:uppercase;padding-left:10px;border-left:1px solid var(--line);margin-left:4px}
  .tabs{display:flex;align-items:stretch;flex:1;overflow:hidden}
  .tab{display:flex;align-items:center;gap:7px;padding:0 16px;border-right:1px solid var(--line);color:var(--dim);font-size:11.5px}
  .tab.on{color:var(--ink);background:#0a0a0a}
  .tab .dot{width:5px;height:5px;background:var(--dim)}
  .tab.on .dot{background:var(--ink)}
  .right{display:flex;align-items:center;gap:18px;padding:0 18px;color:var(--dim);font-size:10.5px;letter-spacing:0.5px;text-transform:uppercase}
  .right b{color:var(--ink);font-weight:500;letter-spacing:0;text-transform:none}
  .main{position:absolute;top:44px;bottom:70px;left:0;right:0;display:grid;grid-template-columns:1fr 1fr;gap:1px;background:var(--line)}
  .col{display:flex;flex-direction:column;background:var(--bg);min-width:0}
  .col-head{display:flex;align-items:center;justify-content:space-between;height:32px;padding:0 14px;border-bottom:1px solid var(--line);color:var(--dim);font-size:10px;letter-spacing:2px;text-transform:uppercase}
  .col-head .lbl{display:flex;align-items:center;gap:8px}
  .col-head .lbl::before{content:"";width:7px;height:7px;background:var(--ink)}
  .col-head .acts{display:flex;gap:2px}
  .col-head button{font:inherit;font-size:10px;letter-spacing:1px;color:var(--dim);background:transparent;border:1px solid var(--line2);padding:3px 8px;cursor:pointer;text-transform:uppercase}
  .col-head button:hover{color:var(--ink);border-color:var(--dim)}
  textarea,pre{flex:1;margin:0;padding:16px 18px;border:0;outline:0;background:var(--bg);color:var(--ink);font:inherit;font-size:12px;line-height:1.6;resize:none;tab-size:2;overflow:auto}
  pre{white-space:pre}
  textarea::placeholder{color:var(--line2)}
  .dock{position:absolute;left:0;right:0;bottom:0;height:70px;display:flex;align-items:center;gap:10px;flex-wrap:wrap;padding:0 18px;background:#000;border-top:1px solid var(--line);user-select:none}
  .dock button{font:inherit;font-size:11px;letter-spacing:1px;color:var(--ink);background:#0a0a0a;border:1px solid var(--line2);padding:8px 16px;cursor:pointer;text-transform:uppercase;transition:background .08s,border-color .08s}
  .dock button:hover{background:#161616;border-color:#3a3a3a}
  .dock button.primary{background:var(--ink);color:#000;border:1px solid var(--ink);font-weight:700}
  .dock button.primary:hover{background:#e0e0e0;border-color:#e0e0e0}
  .dock button:disabled{opacity:.35;cursor:not-allowed}
  .dock .sep{width:1px;height:24px;background:var(--line)}
  .dock .slider{display:flex;align-items:center;gap:8px;color:var(--dim);font-size:10.5px;letter-spacing:1px;text-transform:uppercase}
  .dock .slider input[type=range]{width:100px;accent-color:var(--ink);height:2px}
  .dock .opts{display:flex;align-items:center;gap:14px;margin-left:auto;flex-wrap:wrap}
  .dock label{display:flex;align-items:center;gap:6px;color:var(--dim);font-size:10.5px;cursor:pointer;letter-spacing:1px;text-transform:uppercase}
  .dock label:hover{color:var(--ink)}
  .dock input[type=checkbox]{accent-color:var(--ink);width:12px;height:12px}
  .dock input[type=number]{width:72px;background:#0a0a0a;border:1px solid var(--line2);color:var(--ink);font:inherit;font-size:11px;padding:3px 6px;outline:none;letter-spacing:0}
  .dock input[type=number]:focus{border-color:var(--dim)}
  .status{position:absolute;left:0;right:0;bottom:70px;height:22px;display:flex;align-items:center;gap:10px;padding:0 18px;background:#000;border-top:1px solid var(--line);color:var(--dim);font-size:10px;letter-spacing:1.2px;text-transform:uppercase;overflow:hidden}
  .status .ok{color:var(--ink)}
  .status .err{color:var(--bad)}
  .status .spacer{flex:1}
  @keyframes pulse{0%,100%{opacity:.3}50%{opacity:1}}
  .status .live{width:6px;height:6px;background:var(--ink);animation:pulse 1.1s infinite}
  .status .live.off{animation:none;opacity:.2;background:var(--dim)}
  textarea::-webkit-scrollbar,pre::-webkit-scrollbar{width:9px;height:9px}
  textarea::-webkit-scrollbar-thumb,pre::-webkit-scrollbar{background:#1e1e1e;border:2px solid var(--bg)}
  textarea::-webkit-scrollbar-track,pre::-webkit-scrollbar{background:transparent}
  @media (max-width:900px){
    .main{grid-template-columns:1fr;grid-template-rows:1fr 1fr}
    .tabs{display:none} .brand .sub{display:none}
    .dock{height:auto;padding:10px} .status{position:relative;bottom:auto}
    .main{position:relative;top:auto;bottom:auto;height:calc(100vh - 44px - 160px)}
    body{overflow:auto}
  }
</style>
</head>
<body>

<div class="chrome">
  <div class="brand">
    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
      <path d="M16 3c-2.5 4.5-6.5 7.5-6.5 12.5a6.5 6.5 0 0 0 13 0C22.5 10.5 18.5 7.5 16 3z" fill="#fff"/>
      <path d="M16 12c-1 2-2.5 3.2-2.5 5.2a2.5 2.5 0 0 0 5 0c0-2-1.5-3.2-2.5-5.2z" fill="#000" opacity="0.85"/>
      <path d="M3 27c3.5-1.5 6.5-1.5 10 0s6.5 1.5 10 0 6.5-1.5 6 0" stroke="#fff" stroke-width="1.4" fill="none" stroke-linecap="square"/>
    </svg>
    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" style="width:18px;height:18px">
      <path d="M4 6 L9 26 L16 14 L23 26 L28 6" stroke="#fff" stroke-width="2.4" fill="none" stroke-linejoin="miter" stroke-linecap="square"/>
    </svg>
    <span class="txt">ironbrew<span class="one">1</span></span>
    <span class="sub">lua vm</span>
  </div>
  <div class="tabs">
    <div class="tab on"><span class="dot"></span>source.luau</div>
    <div class="tab"><span class="dot"></span>ironbrew1.lua</div>
  </div>
  <div class="right">
    <div>seed <b id="seedView">4080</b></div>
    <div>halt <b id="haltView">2064</b></div>
    <div>ops <b id="opsView">0</b></div>
  </div>
</div>

<div class="main">
  <section class="col">
    <div class="col-head">
      <div class="lbl">source</div>
      <div class="acts">
        <button id="btnSample">sample</button>
        <button id="btnClear">clear</button>
      </div>
    </div>
    <textarea id="in" spellcheck="false" wrap="off" placeholder="-- paste luau source"></textarea>
  </section>
  <section class="col">
    <div class="col-head">
      <div class="lbl">ironbrew1.lua</div>
      <div class="acts">
        <button id="btnCopy">copy</button>
        <button id="btnDl">save</button>
      </div>
    </div>
    <pre id="out" wrap="off">-- output appears here</pre>
  </section>
</div>

<div class="status">
  <span class="live off" id="liveDot"></span>
  <span id="statusText">idle</span>
  <span class="spacer"></span>
  <span id="statText"></span>
</div>

<div class="dock">
  <button class="primary" id="btnRun">compile</button>
  <button id="btnMin">minify</button>
  <button id="btnReset">reset</button>
  <div class="sep"></div>
  <div class="slider">junk <input type="range" id="oJunk" min="0" max="60" value="25" step="5"></div>
  <div class="opts">
    <label><input type="checkbox" id="oEnc" checked> encrypt</label>
    <label><input type="checkbox" id="oAnti" checked> anti-tamper</label>
    <label><input type="checkbox" id="oLine" checked> single line</label>
    <label>seed <input type="number" id="oSeed" value="4080" min="0" max="999999"></label>
  </div>
</div>

<script>
(function(){
'use strict';

function rngFrom(seed){
  let s=(seed>>>0)||0x4080;
  return function(){
    s^=s<<13; s>>>=0; s^=s>>>17; s^=s<<5; s>>>=0; return s>>>0;
  };
}
const ri=(rng,a,b)=>a+(rng()%(b-a+1));

const MOD = 2147483648;
function modInv(a,m){
  let [old_r,r]=[a,m];
  let [old_s,s]=[1,0];
  while(r!==0){
    const q=Math.floor(old_r/r);
    [old_r,r]=[r,old_r-q*r];
    [old_s,s]=[s,old_s-q*s];
  }
  let inv=old_s % m;
  if(inv<0) inv += m;
  return inv;
}

function rc4Bytes(bytes,key){
  const S=new Array(256);
  for(let i=0;i<256;i++) S[i]=i;
  let j=0;
  for(let i=0;i<256;i++){
    j=(j+S[i]+key[i%key.length])&0xff;
    const t=S[i]; S[i]=S[j]; S[j]=t;
  }
  let i=0; j=0;
  const out=[];
  for(const b of bytes){
    i=(i+1)&0xff;
    j=(j+S[i])&0xff;
    const t=S[i]; S[i]=S[j]; S[j]=t;
    out.push((b ^ S[(S[i]+S[j])&0xff])&0xff);
  }
  return out;
}
function rc4StrToBytes(str){
  const out=[];
  for(let i=0;i<str.length;i++) out.push(str.charCodeAt(i)&0xff);
  return out;
}

/* ---------------- LEXER ---------------- */
const KW=new Set(['and','break','do','else','elseif','end','false','for',
  'function','goto','if','in','local','nil','not','or','repeat','return',
  'then','true','until','while','continue','type','export','typeof']);

function matchLB(src,at){
  if(src[at]!=='[') return null;
  let k=at+1,eq=0;
  while(src[k]==='='){ eq++; k++; }
  if(src[k]!=='[') return null;
  return eq;
}

function lex(src){
  const T=[]; let i=0; const n=src.length;
  const peek=k=>src[i+k];
  const isWS=c=>c===' '||c==='\t'||c==='\r'||c==='\n';
  const isDig=c=>c>='0'&&c<='9';
  const isHex=c=>isDig(c)||(c>='a'&&c<='f')||(c>='A'&&c<='F');
  const isIdS=c=>(c>='a'&&c<='z')||(c>='A'&&c<='Z')||c==='_';
  const isIdC=c=>isIdS(c)||isDig(c);

  while(i<n){
    const c=src[i];
    if(isWS(c)){ i++; continue; }
    if(c==='-'&&peek(1)==='-'){
      if(peek(2)==='['){
        const eq=matchLB(src,i+2);
        if(eq!==null){
          const close=']'+'='.repeat(eq)+']';
          const e=src.indexOf(close,i+eq+4);
          i=e===-1?n:e+close.length; continue;
        }
      }
      while(i<n&&src[i]!=='\n') i++;
      continue;
    }
    if(c==='['){
      const eq=matchLB(src,i);
      if(eq!==null){
        const open=i+eq+2;
        const close=']'+'='.repeat(eq)+']';
        const e=src.indexOf(close,open);
        if(e===-1) throw new Error('unterminated long string');
        T.push({t:'s',v:src.slice(open,e),p:i});
        i=e+close.length; continue;
      }
    }
    if(c==='"'||c==="'"){
      const q=c, st=i; i++;
      let v='';
      while(i<n&&src[i]!==q){
        if(src[i]==='\\'){ v+=src[i]+(src[i+1]||''); i+=2; }
        else { v+=src[i]; i++; }
      }
      if(i>=n) throw new Error('unterminated string');
      i++; T.push({t:'s',v,p:st}); continue;
    }
    if(isDig(c)||(c==='.'&&isDig(peek(1)))){
      const st=i; let j=i;
      if(c==='0'&&(peek(1)==='x'||peek(1)==='X')){
        j=i+2; while(j<n&&isHex(src[j])) j++;
      } else {
        while(j<n&&isDig(src[j])) j++;
        if(src[j]==='.'){ j++; while(j<n&&isDig(src[j])) j++; }
        if(src[j]==='e'||src[j]==='E'){ j++; if(src[j]==='+'||src[j]==='-') j++; while(j<n&&isDig(src[j])) j++; }
      }
      T.push({t:'n',v:src.slice(i,j),p:st}); i=j; continue;
    }
    if(isIdS(c)){
      const st=i; let j=i;
      while(j<n&&isIdC(src[j])) j++;
      const v=src.slice(i,j);
      T.push({t:KW.has(v)?'k':'i',v,p:st}); i=j; continue;
    }
    const three=src.substr(i,3);
    const two=src.substr(i,2);
    if(three==='...'){ T.push({t:'o',v:'...',p:i}); i+=3; continue; }
    if(['==','~=','<=','>=','..','::','//','<<','>>','+=','-=','*=','/=','%=','^=','..='].indexOf(two)>=0){
      T.push({t:'o',v:two,p:i}); i+=2; continue;
    }
    if('+-*/%^#=<>;:,(){}[].|&~?'.indexOf(c)>=0){
      T.push({t:'o',v:c,p:i}); i++; continue;
    }
    throw new Error('unexpected char '+JSON.stringify(c)+' @'+i);
  }
  T.push({t:'eof',v:'<eof>',p:n});
  return T;
}

/* ---------------- PARSER ---------------- */
function parse(tokens){
  let pos=0;
  const cur=()=>tokens[pos];
  const at=(t,v)=>cur().t===t&&(v===undefined||cur().v===v);
  const eat=(t,v)=>{
    if(!at(t,v)) throw new Error('expected '+(v||t)+' got '+cur().v+' @'+cur().p);
    return tokens[pos++];
  };
  const opt=(t,v)=>at(t,v)?tokens[pos++]:null;

  function skipType(){
    if(at('o','?')) pos++;
    let depth=0;
    while(!at('eof')){
      const t=cur();
      if(t.t==='k') return;
      if(t.t==='o'){
        if(t.v==='<'||t.v==='('||t.v==='{'||t.v==='[') depth++;
        else if(t.v==='>'||t.v===')'||t.v==='}'||t.v===']'){
          if(depth===0) return;
          depth--;
        } else if(t.v===',' || t.v==='=' || t.v===';'){
          if(depth===0) return;
        } else if(t.v==='-' && tokens[pos+1] && tokens[pos+1].t==='o' && tokens[pos+1].v==='>'){
          pos++; pos++; continue;
        }
      }
      pos++;
    }
  }
  function chunk(){
    const body=block();
    if(!at('eof')) throw new Error('trailing tokens');
    return {type:'Chunk',body};
  }
  function block(){
    const stats=[];
    while(!at('eof')&&!at('k','end')&&!at('k','else')&&!at('k','elseif')&&!at('k','until')){
      stats.push(stat()); opt('o',';');
    }
    return stats;
  }
  function stat(){
    const t=cur();
    if(t.t==='k'){
      switch(t.v){
        case 'local': return localStat();
        case 'function': return funcStat(false);
        case 'if': return ifStat();
        case 'while': return whileStat();
        case 'repeat': return repeatStat();
        case 'for': return forStat();
        case 'do': { pos++; const b=block(); eat('k','end'); return {type:'Do',body:b}; }
        case 'return': return returnStat();
        case 'break': pos++; return {type:'Break'};
        case 'continue': pos++; return {type:'Continue'};
        case 'goto': { pos++; const n=eat('i').v; return {type:'Goto',label:n}; }
        case 'type': {
          pos++; eat('i');
          while(!at('eof') && !at('o',';') && !at('k','end') && !at('k','local') && !at('k','function') && !at('k','if') && !at('k','for') && !at('k','while') && !at('k','return')){ pos++; }
          return {type:'Noop'};
        }
      }
    }
    if(t.t==='o'&&t.v==='::'){ pos++; const n=eat('i').v; eat('o','::'); return {type:'Label',label:n}; }
    return exprStat();
  }
  function localStat(){
    eat('k','local');
    if(at('k','function')) return funcStat(true);
    const names=namelist();
    let exprs=[];
    if(opt('o','=')) exprs=explist();
    return {type:'Local',names,exprs};
  }
  function funcStat(isLocal){
    eat('k','function');
    const path=[eat('i').v];
    let isMethod=false;
    while(opt('o','.')) path.push(eat('i').v);
    if(opt('o',':')){ path.push(eat('i').v); isMethod=true; }
    const body=funcBody(isMethod);
    return {type:'Func',isLocal,path,body};
  }
  function funcBody(isMethod){
    if(opt('o','<')){
      let depth=1;
      while(depth>0 && !at('eof')){ const t=tokens[pos++]; if(t.v==='<') depth++; else if(t.v==='>') depth--; }
    }
    eat('o','(');
    const params=[]; let vararg=false;
    if(isMethod) params.push('self');
    if(!at('o',')')){
      do{
        if(at('o','...')){ pos++; vararg=true; break; }
        if(at('o',':')){ pos++; skipType(); break; }
        params.push(eat('i').v);
        if(at('o',':')){ pos++; skipType(); }
      } while(opt('o',','));
    }
    eat('o',')');
    if(at('o',':')){ pos++; skipType(); }
    const body=block(); eat('k','end');
    return {type:'FuncBody',params,vararg,body};
  }
  function ifStat(){
    eat('k','if');
    const clauses=[];
    let cond=exp(); eat('k','then');
    let body=block();
    clauses.push({cond,body});
    while(at('k','elseif')){
      pos++; cond=exp(); eat('k','then'); body=block();
      clauses.push({cond,body});
    }
    let elseBody=null;
    if(opt('k','else')) elseBody=block();
    eat('k','end');
    return {type:'If',clauses,elseBody};
  }
  function whileStat(){
    eat('k','while'); const cond=exp(); eat('k','do');
    const body=block(); eat('k','end');
    return {type:'While',cond,body};
  }
  function repeatStat(){
    eat('k','repeat'); const body=block(); eat('k','until');
    const cond=exp();
    return {type:'Repeat',body,cond};
  }
  function forStat(){
    eat('k','for'); const name=eat('i').v;
    if(at('o',':')){ pos++; skipType(); }
    if(at('o','=')){
      pos++;
      const from=exp();
      eat('o',',');
      const to=exp();
      let step=null;
      if(opt('o',',')) step=exp();
      eat('k','do');
      const body=block(); eat('k','end');
      return {type:'ForNum',name,from,to,step,body};
    }
    const names=[name];
    while(opt('o',',')){
      const n=eat('i').v;
      if(at('o',':')){ pos++; skipType(); }
      names.push(n);
    }
    eat('k','in');
    const exprs=explist();
    eat('k','do');
    const body=block(); eat('k','end');
    return {type:'ForIn',names,exprs,body};
  }
  function returnStat(){
    eat('k','return');
    let exprs=[];
    if(!at('eof')&&!at('k','end')&&!at('k','else')&&!at('k','elseif')&&!at('k','until')&&!at('o',';')){
      exprs=explist();
    }
    opt('o',';');
    return {type:'Return',exprs};
  }
  function exprStat(){
    const e=suffixedExpr();
    if(e.type==='Call'||e.type==='MethodCall') return {type:'Call',expr:e};
    if(at('o',',')||at('o','=')){
      const targets=[e];
      while(opt('o',',')) targets.push(suffixedExpr());
      eat('o','=');
      const exprs=explist();
      return {type:'Assign',targets,exprs};
    }
    const compound={ '+=':'+','-=':'-','*=':'*','/=':'/','%=':'%','^=':'^','..=':'..' };
    if(at('o','+=')||at('o','-=')||at('o','*=')||at('o','/=')||at('o','%=')||at('o','^=')||at('o','..=')){
      const op=compound[cur().v];
      pos++;
      const rhs=exp();
      return {type:'Assign',targets:[e],exprs:[{type:'Bin',op,l:e,r:rhs}]};
    }
    throw new Error('bad statement @'+cur().p);
  }
  function namelist(){
    const names=[];
    for(;;){
      names.push(eat('i').v);
      if(at('o',':')){ pos++; skipType(); }
      if(!opt('o',',')) break;
    }
    return names;
  }
  function explist(){
    const list=[exp()];
    while(opt('o',',')) list.push(exp());
    return list;
  }
  function exp(){ return orExpr(); }
  function orExpr(){
    let l=andExpr();
    while(at('k','or')){ pos++; const r=andExpr(); l={type:'Bin',op:'or',l,r}; }
    return l;
  }
  function andExpr(){
    let l=cmpExpr();
    while(at('k','and')){ pos++; const r=cmpExpr(); l={type:'Bin',op:'and',l,r}; }
    return l;
  }
  function cmpExpr(){
    let l=concatExpr();
    while(at('o','==')||at('o','~=')||at('o','<')||at('o','>')||at('o','<=')||at('o','>=')){
      const op=tokens[pos++].v; const r=concatExpr();
      l={type:'Bin',op,l,r};
    }
    return l;
  }
  function concatExpr(){
    let l=addExpr();
    if(!at('o','..')) return l;
    const rs=[l];
    while(at('o','..')){ pos++; rs.push(addExpr()); }
    let node=rs[0];
    for(let i=1;i<rs.length;i++) node={type:'Bin',op:'..',l:node,r:rs[i]};
    return node;
  }
  function addExpr(){
    let l=mulExpr();
    while(at('o','+')||at('o','-')){
      const op=tokens[pos++].v; const r=mulExpr();
      l={type:'Bin',op,l,r};
    }
    return l;
  }
  function mulExpr(){
    let l=unaryExpr();
    while(at('o','*')||at('o','/')||at('o','%')||at('o','//')){
      const op=tokens[pos++].v; const r=unaryExpr();
      l={type:'Bin',op,l,r};
    }
    return l;
  }
  function unaryExpr(){
    if(at('k','not')||at('o','-')||at('o','#')){
      const op=tokens[pos++].v;
      const e=unaryExpr();
      return {type:'Un',op,e};
    }
    return powExpr();
  }
  function powExpr(){
    const l=suffixedExpr();
    if(at('o','^')){
      pos++;
      const r=unaryExpr();
      return {type:'Bin',op:'^',l,r};
    }
    return l;
  }
  function suffixedExpr(){
    let e=primaryExpr();
    for(;;){
      if(at('o','.')){
        pos++; const n=eat('i').v;
        e={type:'Index',obj:e,key:{type:'Str',v:n},isDot:true};
      } else if(at('o','[')){
        pos++; const k=exp(); eat('o',']');
        e={type:'Index',obj:e,key:k};
      } else if(at('o',':')){
        pos++; const m=eat('i').v;
        const args=callArgs();
        e={type:'MethodCall',obj:e,method:m,args};
      } else if(at('o','(')||at('o','{')||at('s')){
        const args=callArgs();
        e={type:'Call',fn:e,args};
      } else if(at('o','<')){
        pos++; let depth=1;
        while(depth>0 && !at('eof')){ const t=tokens[pos++]; if(t.v==='<') depth++; else if(t.v==='>') depth--; }
        const args=callArgs();
        e={type:'Call',fn:e,args};
      } else break;
    }
    return e;
  }
  function callArgs(){
    if(at('o','(')){
      pos++; const args=[];
      if(!at('o',')')) args.push(...explist());
      eat('o',')'); return args;
    }
    if(at('o','{')) return [tableCtor()];
    if(at('s')){ const s=tokens[pos++]; return [{type:'Str',v:s.v}]; }
    throw new Error('bad call args');
  }
  function primaryExpr(){
    const t=cur();
    if(t.t==='n'){ pos++; return {type:'Num',v:t.v}; }
    if(t.t==='s'){ pos++; return {type:'Str',v:t.v}; }
    if(t.t==='k'){
      if(t.v==='nil'){ pos++; return {type:'Nil'}; }
      if(t.v==='true'){ pos++; return {type:'Bool',v:true}; }
      if(t.v==='false'){ pos++; return {type:'Bool',v:false}; }
      if(t.v==='function'){ pos++; const body=funcBody(false); return {type:'Fn',body}; }
      if(t.v==='typeof'){ pos++; const args=callArgs(); return {type:'Call',fn:{type:'Name',v:'typeof'},args}; }
    }
    if(t.t==='i'){ pos++; return {type:'Name',v:t.v}; }
    if(t.t==='o'&&t.v==='...'){ pos++; return {type:'Vararg'}; }
    if(t.t==='o'&&t.v==='('){
      pos++; const e=exp(); eat('o',')');
      return {type:'Paren',e};
    }
    if(t.t==='o'&&t.v==='{') return tableCtor();
    throw new Error('bad primary '+JSON.stringify(t.v)+' @'+t.p);
  }
  function tableCtor(){
    eat('o','{');
    const fields=[];
    while(!at('o','}')){
      if(at('o','[')){
        pos++; const k=exp(); eat('o',']'); eat('o','=');
        fields.push({kind:'expr',k,v:exp()});
      } else if(at('i')&&tokens[pos+1]&&tokens[pos+1].t==='o'&&tokens[pos+1].v==='='){
        const n=eat('i').v; eat('o','='); const v=exp();
        fields.push({kind:'named',k:n,v});
      } else {
        fields.push({kind:'array',v:exp()});
      }
      if(!opt('o',',')&&!opt('o',';')) break;
    }
    eat('o','}');
    return {type:'Table',fields};
  }
  return chunk();
}

/* ---------------- BYTECODE ---------------- */
const OP={
  MOVE:1, LOADK:2, LOADNIL:3, LOADBOOL:4,
  GETGLOBAL:5, SETGLOBAL:6, GETTABLE:7, SETTABLE:8,
  NEWTABLE:9, SETLIST:10,
  ADD:11, SUB:12, MUL:13, DIV:14, MOD:15, POW:16, IDIV:17,
  CONCAT:18, NOT:19, UNM:20, LEN:21,
  EQ:22, NE:23, LT:24, LE:25, GT:26, GE:27,
  JMP:28, TEST:29,
  CALL:30, RETURN:31,
  VARARG:32, CLOSURE:33,
  TFORCALL:34
};

class Proto {
  constructor(parent){
    this.parent=parent;
    this.code=[]; this.K=[]; this.protos=[];
    this.params=0; this.vararg=false;
    this.maxReg=0; this.regTop=0; this.freeList=[];
    this.breakPatches=[]; this.continuePatches=[];
    this.__gid=0;
  }
  kAdd(k,v){
    for(let i=0;i<this.K.length;i++){
      const c=this.K[i];
      if(c.k===k && c.v===v) return i;
    }
    this.K.push({k,v});
    return this.K.length-1;
  }
  emit(op,a,b,c){ this.code.push({op,a:a|0,b:b|0,c:c|0}); return this.code.length-1; }
  patch(idx,field,val){ this.code[idx][field]=val; }
  alloc(){
    if(this.freeList.length) return this.freeList.pop();
    const r=this.regTop++;
    if(this.regTop>this.maxReg) this.maxReg=this.regTop;
    if(r>250) throw new Error('register overflow');
    return r;
  }
}

class Compiler {
  constructor(){ this.proto=null; this.scopes=[]; this.protoCounter=0; }
  compileChunk(ast){
    const p=new Proto(null);
    p.__gid = this.protoCounter++;
    this.proto=p;
    this.scopes=[new Map()];
    this.compileBlock(ast.body);
    p.emit(OP.RETURN, 0, 0, 0);
    return p;
  }
  pushScope(){ this.scopes.push(new Map()); }
  popScope(){ this.scopes.pop(); }
  declare(name){
    const p=this.proto;
    const r=p.alloc();
    this.scopes[this.scopes.length-1].set(name, r);
    return r;
  }
  lookup(name){
    for(let i=this.scopes.length-1;i>=0;i--){
      if(this.scopes[i].has(name)) return {kind:'local',reg:this.scopes[i].get(name)};
    }
    return {kind:'global',name};
  }
  compileBlock(stats){ for(const s of stats) this.compileStat(s); }
  compileStat(s){
    switch(s.type){
      case 'Noop': return;
      case 'Local': return this.compileLocal(s);
      case 'Assign': return this.compileAssign(s);
      case 'Call': return this.compileExpr(s.expr);
      case 'Func': return this.compileFuncStat(s);
      case 'If': return this.compileIf(s);
      case 'While': return this.compileWhile(s);
      case 'Repeat': return this.compileRepeat(s);
      case 'ForNum': return this.compileForNum(s);
      case 'ForIn': return this.compileForIn(s);
      case 'Do': return this.compileDo(s);
      case 'Return': return this.compileReturn(s);
      case 'Break': return this.compileBreak();
      case 'Continue': return this.compileContinue();
    }
  }
  compileLocal(s){
    const p=this.proto;
    const vals=[];
    for(const e of s.exprs) vals.push(this.compileExpr(e));
    const n=s.names.length;
    const regs=[];
    for(let i=0;i<n;i++){
      if(i<vals.length) regs.push(vals[i]);
      else regs.push(this.emitNil());
    }
    for(let i=0;i<n;i++){
      const r=this.declare(s.names[i]);
      p.emit(OP.MOVE, r, regs[i], 0);
    }
  }
  emitNil(){ const p=this.proto; const r=p.alloc(); p.emit(OP.LOADNIL, r, 0, 0); return r; }
  compileFuncStat(s){
    const p=this.proto;
    const proto=this.compileNestedProto(s.body);
    if(s.isLocal){
      const r=this.declare(s.path[0]);
      p.emit(OP.CLOSURE, r, proto, 0);
    } else {
      const l=this.lookup(s.path[0]);
      if(l.kind==='local'){
        p.emit(OP.CLOSURE, l.reg, proto, 0);
      } else {
        const r=p.alloc();
        p.emit(OP.CLOSURE, r, proto, 0);
        p.emit(OP.SETGLOBAL, p.kAdd('s',s.path[0]), r, 0);
      }
    }
  }
  compileNestedProto(fb){
    const savedProto=this.proto;
    const savedScopes=this.scopes;
    const p=new Proto(savedProto);
    p.__gid = this.protoCounter++;
    savedProto.protos.push(p);
    this.proto=p;
    this.scopes=[new Map()];
    for(const param of fb.params) this.declare(param);
    p.params=fb.params.length;
    p.vararg=fb.vararg;
    this.compileBlock(fb.body);
    p.emit(OP.RETURN, 0, 0, 0);
    this.proto=savedProto;
    this.scopes=savedScopes;
    return p.__gid;
  }
  compileAssign(s){
    const p=this.proto;
    const vals=s.targets.map((t,i)=> this.compileExpr(s.exprs[i] || {type:'Nil'}));
    for(let i=s.targets.length-1;i>=0;i--){
      const t=s.targets[i], v=vals[i];
      if(t.type==='Name'){
        const l=this.lookup(t.v);
        if(l.kind==='local') p.emit(OP.MOVE, l.reg, v, 0);
        else p.emit(OP.SETGLOBAL, p.kAdd('s', t.v), v, 0);
      } else if(t.type==='Index'){
        const objReg=this.compileExpr(t.obj);
        const keyReg = t.isDot
          ? (()=>{ const r=p.alloc(); p.emit(OP.LOADK, r, p.kAdd('s', t.key.v), 0); return r; })()
          : this.compileExpr(t.key);
        p.emit(OP.SETTABLE, objReg, keyReg, v);
      }
    }
  }
  compileExpr(e){
    const p=this.proto;
    switch(e.type){
      case 'Nil': { const r=p.alloc(); p.emit(OP.LOADNIL, r, 0, 0); return r; }
      case 'Bool': { const r=p.alloc(); p.emit(OP.LOADBOOL, r, e.v?1:0, 0); return r; }
      case 'Num': { const r=p.alloc(); p.emit(OP.LOADK, r, p.kAdd('n', Number(e.v)), 0); return r; }
      case 'Str': { const r=p.alloc(); p.emit(OP.LOADK, r, p.kAdd('s', e.v), 0); return r; }
      case 'Vararg': { const r=p.alloc(); p.emit(OP.VARARG, r, 0, 0); return r; }
      case 'Paren': return this.compileExpr(e.e);
      case 'Name': {
        const l=this.lookup(e.v);
        if(l.kind==='local'){
          const r=p.alloc();
          p.emit(OP.MOVE, r, l.reg, 0);
          return r;
        }
        const r=p.alloc();
        p.emit(OP.GETGLOBAL, r, p.kAdd('s', e.v), 0);
        return r;
      }
      case 'Index': {
        const obj=this.compileExpr(e.obj);
        const key = e.isDot
          ? (()=>{ const r=p.alloc(); p.emit(OP.LOADK, r, p.kAdd('s', e.key.v), 0); return r; })()
          : this.compileExpr(e.key);
        const r=p.alloc();
        p.emit(OP.GETTABLE, r, obj, key);
        return r;
      }
      case 'Call': {
        const fn=this.compileExpr(e.fn);
        for(const a of e.args) this.compileExpr(a);
        const r=p.alloc();
        p.emit(OP.CALL, r, fn, e.args.length);
        return r;
      }
      case 'MethodCall': {
        const objReg=this.compileExpr(e.obj);
        const keyReg=p.alloc();
        p.emit(OP.LOADK, keyReg, p.kAdd('s', e.method), 0);
        const mreg=p.alloc();
        p.emit(OP.GETTABLE, mreg, objReg, keyReg);
        // push self as first arg, then remaining args
        const selfReg=p.alloc();
        p.emit(OP.MOVE, selfReg, objReg, 0);
        for(const a of e.args) this.compileExpr(a);
        const r=p.alloc();
        p.emit(OP.CALL, r, mreg, e.args.length+1);
        return r;
      }
      case 'Fn': {
        const proto=this.compileNestedProto(e.body);
        const r=p.alloc();
        p.emit(OP.CLOSURE, r, proto, 0);
        return r;
      }
      case 'Table': {
        const r=p.alloc();
        p.emit(OP.NEWTABLE, r, e.fields.length, 0);
        let arrIdx=1;
        for(const f of e.fields){
          if(f.kind==='array'){
            const v=this.compileExpr(f.v);
            p.emit(OP.SETLIST, r, arrIdx, v);
            arrIdx++;
          } else if(f.kind==='named'){
            const k=p.alloc();
            p.emit(OP.LOADK, k, p.kAdd('s', f.k), 0);
            const v=this.compileExpr(f.v);
            p.emit(OP.SETTABLE, r, k, v);
          } else {
            const k=this.compileExpr(f.k);
            const v=this.compileExpr(f.v);
            p.emit(OP.SETTABLE, r, k, v);
          }
        }
        return r;
      }
      case 'Un': {
        const v=this.compileExpr(e.e);
        const r=p.alloc();
        if(e.op==='not') p.emit(OP.NOT, r, v, 0);
        else if(e.op==='-') p.emit(OP.UNM, r, v, 0);
        else if(e.op==='#') p.emit(OP.LEN, r, v, 0);
        return r;
      }
      case 'Bin': {
        if(e.op==='and'||e.op==='or'){
          const l=this.compileExpr(e.l);
          const r=p.alloc();
          p.emit(OP.MOVE, r, l, 0);
          const jmp=p.emit(OP.TEST, r, e.op==='and'?1:0, -1);
          const r2=this.compileExpr(e.r);
          p.emit(OP.MOVE, r, r2, 0);
          p.patch(jmp, 'c', p.code.length);
          return r;
        }
        const l=this.compileExpr(e.l);
        const rt=this.compileExpr(e.r);
        const r=p.alloc();
        const map={
          '+':OP.ADD,'-':OP.SUB,'*':OP.MUL,'/':OP.DIV,'%':OP.MOD,'^':OP.POW,
          '//':OP.IDIV,'..':OP.CONCAT,
          '==':OP.EQ,'~=':OP.NE,'<':OP.LT,'<=':OP.LE,'>':OP.GT,'>=':OP.GE
        };
        p.emit(map[e.op], r, l, rt);
        return r;
      }
    }
    throw new Error('bad expr '+e.type);
  }
  compileIf(s){
    const p=this.proto;
    const endJumps=[];
    for(const cl of s.clauses){
      const c=this.compileExpr(cl.cond);
      const jFalse=p.emit(OP.TEST, c, 0, -1);
      this.compileBlock(cl.body);
      const j=p.emit(OP.JMP, -1, 0, 0);
      endJumps.push(j);
      p.patch(jFalse, 'c', p.code.length);
    }
    if(s.elseBody) this.compileBlock(s.elseBody);
    for(const j of endJumps) p.patch(j, 'a', p.code.length);
  }
  compileWhile(s){
    const p=this.proto;
    const top=p.code.length;
    const sB=p.breakPatches, sC=p.continuePatches;
    p.breakPatches=[]; p.continuePatches=[];
    const c=this.compileExpr(s.cond);
    const jEnd=p.emit(OP.TEST, c, 0, -1);
    this.compileBlock(s.body);
    const ct=p.code.length;
    for(const j of p.continuePatches) p.patch(j, 'a', ct);
    p.emit(OP.JMP, top, 0, 0);
    const et=p.code.length;
    for(const j of p.breakPatches) p.patch(j, 'a', et);
    p.patch(jEnd, 'c', et);
    p.breakPatches=sB; p.continuePatches=sC;
  }
  compileRepeat(s){
    const p=this.proto;
    const top=p.code.length;
    const sB=p.breakPatches, sC=p.continuePatches;
    p.breakPatches=[]; p.continuePatches=[];
    this.compileBlock(s.body);
    const ct=p.code.length;
    for(const j of p.continuePatches) p.patch(j, 'a', ct);
    const c=this.compileExpr(s.cond);
    const jEnd=p.emit(OP.TEST, c, 1, -1);
    p.emit(OP.JMP, top, 0, 0);
    const et=p.code.length;
    for(const j of p.breakPatches) p.patch(j, 'a', et);
    p.patch(jEnd, 'c', et);
    p.breakPatches=sB; p.continuePatches=sC;
  }
  compileForNum(s){
    const p=this.proto;
    const from=this.compileExpr(s.from);
    const to=this.compileExpr(s.to);
    const step=s.step ? this.compileExpr(s.step) : (()=>{ const r=p.alloc(); p.emit(OP.LOADK, r, p.kAdd('n',1),0); return r; })();
    const base=this.declare(s.name);
    p.emit(OP.MOVE, base, from, 0);
    const limit=p.alloc(); p.emit(OP.MOVE, limit, to, 0);
    const stepReg=p.alloc(); p.emit(OP.MOVE, stepReg, step, 0);
    const top=p.code.length;
    const sB=p.breakPatches, sC=p.continuePatches;
    p.breakPatches=[]; p.continuePatches=[];
    const cond=p.alloc();
    p.emit(OP.LE, cond, base, limit);
    const jSkip=p.emit(OP.TEST, cond, 0, -1);
    this.compileBlock(s.body);
    const ct=p.code.length;
    for(const j of p.continuePatches) p.patch(j, 'a', ct);
    p.emit(OP.ADD, base, base, stepReg);
    p.emit(OP.JMP, top, 0, 0);
    const et=p.code.length;
    for(const j of p.breakPatches) p.patch(j, 'a', et);
    p.patch(jSkip, 'c', et);
    p.breakPatches=sB; p.continuePatches=sC;
  }
  compileForIn(s){
    const p=this.proto;
    const f=this.compileExpr(s.exprs[0]||{type:'Nil'});
    const sreg=this.compileExpr(s.exprs[1]||{type:'Nil'});
    const ctrl=this.compileExpr(s.exprs[2]||{type:'Nil'});
    const top=p.code.length;
    const sB=p.breakPatches, sC=p.continuePatches;
    p.breakPatches=[]; p.continuePatches=[];
    const res=p.alloc();
    p.emit(OP.TFORCALL, res, f, sreg, ctrl);
    const jEnd=p.emit(OP.TEST, res, 0, -1);
    for(let i=0;i<s.names.length;i++){
      const r=this.declare(s.names[i]);
      const src=p.alloc();
      p.emit(OP.GETTABLE, src, res, p.kAdd('n', i+1), 0);
      p.emit(OP.MOVE, r, src, 0);
    }
    this.compileBlock(s.body);
    const ct=p.code.length;
    for(const j of p.continuePatches) p.patch(j, 'a', ct);
    p.emit(OP.JMP, top, 0, 0);
    const et=p.code.length;
    for(const j of p.breakPatches) p.patch(j, 'a', et);
    p.patch(jEnd, 'c', et);
    p.breakPatches=sB; p.continuePatches=sC;
  }
  compileDo(s){
    this.pushScope();
    this.compileBlock(s.body);
    this.popScope();
  }
  compileReturn(s){
    const p=this.proto;
    if(s.exprs.length===0){ p.emit(OP.RETURN, 0, 0, 0); return; }
    const regs=s.exprs.map(e=>this.compileExpr(e));
    p.emit(OP.RETURN, regs[0], regs.length, 0);
  }
  compileBreak(){
    const p=this.proto;
    const j=p.emit(OP.JMP, 0, 0, 0);
    p.breakPatches.push(j);
  }
  compileContinue(){
    const p=this.proto;
    const j=p.emit(OP.JMP, 0, 0, 0);
    p.continuePatches.push(j);
  }
}

/* ---------------- NAME GEN ---------------- */
function makeNameGen(rng, reserved){
  const used=new Set(reserved);
  const pool='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  return function(){
    let name;
    do {
      const len=1+(rng()%3);
      let s='';
      for(let k=0;k<len;k++) s+=pool[rng()%pool.length];
      name=s;
    } while(used.has(name) || KW.has(name));
    used.add(name);
    return name;
  };
}

/* ---------------- EMITTER ---------------- */
function toSigned31(v){
  v = v % MOD;
  if(v < 0) v += MOD;
  return v >= MOD/2 ? v - MOD : v;
}

function buildChunk(ast, opt){
  const rng=rngFrom(opt.seed);
  const HALT=ri(rng,2000,3000);

  const bhKeyA=[], bhKeyB=[], bhKeyInv=[];
  const rc4Key=[];
  for(let i=0;i<8;i++) rc4Key.push(ri(rng,0,255));

  const genName=makeNameGen(rng, ['function','end','then','do','while','for','if','else','elseif',
    'local','return','break','continue','repeat','until','and','or','not','in','true','false','nil',
    'table','string','math','bit32','_ENV','coroutine','tostring','tonumber','pairs','ipairs',
    'type','print','warn','error','select','next','setmetatable','getmetatable','pcall','xpcall',
    'unpack','loadstring','require','typeof','getgenv','_G','game','workspace','script',
    'Instance','Enum','Vector3','Color3','CFrame','UDim2','UDim','Random','task','wait','spawn']);

  const N = {
    r: genName(),
    x: genName(),
    c: genName(),
    k: genName(),
    bi: genName(),
    bh: genName(),
    frames: genName(),
    top: genName(),
    protos: genName(),
    RC4: genName(),
    bxor: genName(),
    unpack: genName(),
    G: genName()
  };

  const compiler=new Compiler();
  const root=compiler.compileChunk(ast);

  // Build global proto table indexed by __gid
  const protos=[];
  (function walk(p){
    protos[p.__gid] = p;
    for(const q of p.protos) walk(q);
  })(root);

  const insList=[];
  for(const p of protos){
    if(!p) continue;
    for(let i=0;i<p.code.length;i++) insList.push({proto:p, i, ins:p.code[i]});
  }
  const totalIns=insList.length;

  const pool=new Set();
  while(pool.size < totalIns+32) pool.add(ri(rng,48,1900));
  const stateIds=[...pool].sort((a,b)=>a-b).slice(0,totalIns);
  {
    let k=0;
    for(const p of protos){
      if(!p) continue;
      p.__stateId=[];
      for(let i=0;i<p.code.length;i++) p.__stateId[i]=stateIds[k++];
    }
  }

  const installIds=[];
  for(let i=16;i<32;i++) installIds.push(i);
  const lazyId=ri(rng,32,47);

  const realOps=Object.values(OP);
  const shuffled=realOps.slice();
  for(let i=shuffled.length-1;i>0;i--){
    const j=rng()%(i+1);
    const t=shuffled[i]; shuffled[i]=shuffled[j]; shuffled[j]=t;
  }
  const opMap={};
  for(let i=0;i<realOps.length;i++) opMap[realOps[i]]=shuffled[i];

  const rawBh=[];
  for(const p of protos){
    if(!p) continue;
    p.__bhOfs=[];
    for(let i=0;i<p.code.length;i++){
      const ins=p.code[i];
      p.__bhOfs[i]=rawBh.length;
      rawBh.push(opMap[ins.op]);
      switch(ins.op){
        case OP.LOADNIL: case OP.VARARG:
          rawBh.push(ins.a); break;
        case OP.JMP:
          rawBh.push(ins.a<0 ? -1 : ins.a); break;
        case OP.MOVE: case OP.LOADK: case OP.LOADBOOL:
        case OP.GETGLOBAL: case OP.SETGLOBAL:
        case OP.NEWTABLE: case OP.NOT: case OP.UNM: case OP.LEN:
        case OP.CLOSURE: case OP.RETURN:
          rawBh.push(ins.a); rawBh.push(ins.b); break;
        default:
          rawBh.push(ins.a); rawBh.push(ins.b); rawBh.push(ins.c); break;
      }
    }
  }

  for(let i=0;i<rawBh.length;i++){
    const a=(ri(rng,1,32767)|1);
    const b=ri(rng,0,MOD-1);
    bhKeyA.push(a);
    bhKeyB.push(b);
    bhKeyInv.push(modInv(a,MOD));
  }
  const bh=new Array(rawBh.length);
  for(let i=0;i<rawBh.length;i++){
    bh[i]=toSigned31((rawBh[i]*bhKeyA[i] + bhKeyB[i]) % MOD);
  }

  function decodeExpr(idx){
    return `((${N.bh}[${idx}]-${bhKeyB[idx]})*${bhKeyInv[idx]}%${MOD})`;
  }

  /* Transition writes to top.x. top is the current frame object.
     c is a plain arithmetic accumulator (no frame-local needed). */
  function transition(srcId, dstId, shape){
    const s=shape!==undefined ? shape : (rng()%4);
    const d=ri(rng,-9000,9000);
    if(s===0){
      return `${N.top}.x,${N.c}=(${dstId}),(((${N.c}+${d})%${MOD})%4096)`;
    }
    if(s===1){
      const tag=ri(rng,1,255);
      return `${N.top}.x,${N.c}=(bit32.bxor(${srcId},${tag})~=${srcId} and ${dstId} or ${dstId}),(((${N.c}+${d})%4096))`;
    }
    if(s===2){
      const a2=ri(rng,1,500);
      return `${N.top}.x,${N.c}=(${dstId}+(${a2}-${a2})),(((${N.c}+${d})%${MOD})%4096)`;
    }
    const a=ri(rng,1,100);
    return `${N.top}.x,${N.c}=(${dstId}*(${a}^0)),(((${N.c}+${d})%${MOD})%4096)`;
  }
  function opaqueTrue(){
    const kind=rng()%3;
    if(kind===0){
      const r0=ri(rng,1,500);
      return `((${N.c}+${r0}-${r0})==${N.c})`;
    }
    if(kind===1){
      const s0=ri(rng,1,90);
      return `((${s0}*${s0})>=0)`;
    }
    const t0=ri(rng,2,40);
    return `((${t0}%${t0})==0)`;
  }

  /* r refers to current frame's register table.
     Each state body establishes local r = top.r at its start (see emitChain). */
  function opAction(ins, ofs, protoId, p, i){
    const o=decodeExpr(ofs);
    const a=decodeExpr(ofs+1);
    const b=(ins.op===OP.LOADNIL || ins.op===OP.VARARG || ins.op===OP.JMP) ? null : decodeExpr(ofs+2);
    const c=(ins.op===OP.MOVE||ins.op===OP.LOADK||ins.op===OP.LOADBOOL||
             ins.op===OP.GETGLOBAL||ins.op===OP.SETGLOBAL||
             ins.op===OP.NEWTABLE||ins.op===OP.NOT||ins.op===OP.UNM||ins.op===OP.LEN||
             ins.op===OP.CLOSURE||ins.op===OP.RETURN) ? null : decodeExpr(ofs+3);

    const sid = p.__stateId[i];
    const nextId = (i+1<p.code.length) ? p.__stateId[i+1] : HALT;
    const fall = transition(sid, nextId);

    const T=(realOp)=>`${o}==${opMap[realOp]}`;

    switch(ins.op){
      case OP.MOVE:      return `if ${T(OP.MOVE)} then ${N.r}[${a}]=${N.r}[${b}]`;
      case OP.LOADK:     return `if ${T(OP.LOADK)} then ${N.r}[${a}]=${N.k}[1+${b}]`;
      case OP.LOADNIL:   return `if ${T(OP.LOADNIL)} then ${N.r}[${a}]=nil`;
      case OP.LOADBOOL:  return `if ${T(OP.LOADBOOL)} then ${N.r}[${a}]=(${b}~=0)`;
      case OP.GETGLOBAL: return `if ${T(OP.GETGLOBAL)} then ${N.r}[${a}]=${N.G}[${N.k}[1+${b}]]`;
      case OP.SETGLOBAL: return `if ${T(OP.SETGLOBAL)} then ${N.G}[${N.k}[1+${a}]]=${N.r}[${b}]`;
      case OP.GETTABLE:  return `if ${T(OP.GETTABLE)} then ${N.r}[${a}]=${N.r}[${b}][${N.r}[${c}]]`;
      case OP.SETTABLE:  return `if ${T(OP.SETTABLE)} then ${N.r}[${a}][${N.r}[${b}]]=${N.r}[${c}]`;
      case OP.NEWTABLE:  return `if ${T(OP.NEWTABLE)} then ${N.r}[${a}]={}`;
      case OP.SETLIST:   return `if ${T(OP.SETLIST)} then ${N.r}[${a}][${b}]=${N.r}[${c}]`;
      case OP.ADD:       return `if ${T(OP.ADD)} then ${N.r}[${a}]=${N.r}[${b}]+${N.r}[${c}]`;
      case OP.SUB:       return `if ${T(OP.SUB)} then ${N.r}[${a}]=${N.r}[${b}]-${N.r}[${c}]`;
      case OP.MUL:       return `if ${T(OP.MUL)} then ${N.r}[${a}]=${N.r}[${b}]*${N.r}[${c}]`;
      case OP.DIV:       return `if ${T(OP.DIV)} then ${N.r}[${a}]=${N.r}[${b}]/${N.r}[${c}]`;
      case OP.MOD:       return `if ${T(OP.MOD)} then ${N.r}[${a}]=${N.r}[${b}]%${N.r}[${c}]`;
      case OP.POW:       return `if ${T(OP.POW)} then ${N.r}[${a}]=${N.r}[${b}]^${N.r}[${c}]`;
      case OP.IDIV:      return `if ${T(OP.IDIV)} then ${N.r}[${a}]=math.floor(${N.r}[${b}]/${N.r}[${c}])`;
      case OP.CONCAT:    return `if ${T(OP.CONCAT)} then ${N.r}[${a}]=tostring(${N.r}[${b}])..tostring(${N.r}[${c}])`;
      case OP.NOT:       return `if ${T(OP.NOT)} then ${N.r}[${a}]=not ${N.r}[${b}]`;
      case OP.UNM:       return `if ${T(OP.UNM)} then ${N.r}[${a}]=-${N.r}[${b}]`;
      case OP.LEN:       return `if ${T(OP.LEN)} then ${N.r}[${a}]=#${N.r}[${b}]`;
      case OP.EQ:        return `if ${T(OP.EQ)} then ${N.r}[${a}]=(${N.r}[${b}]==${N.r}[${c}])`;
      case OP.NE:        return `if ${T(OP.NE)} then ${N.r}[${a}]=(${N.r}[${b}]~=${N.r}[${c}])`;
      case OP.LT:        return `if ${T(OP.LT)} then ${N.r}[${a}]=(${N.r}[${b}]<${N.r}[${c}])`;
      case OP.LE:        return `if ${T(OP.LE)} then ${N.r}[${a}]=(${N.r}[${b}]<=${N.r}[${c}])`;
      case OP.GT:        return `if ${T(OP.GT)} then ${N.r}[${a}]=(${N.r}[${b}]>${N.r}[${c}])`;
      case OP.GE:        return `if ${T(OP.GE)} then ${N.r}[${a}]=(${N.r}[${b}]>=${N.r}[${c}])`;
      case OP.CALL:      return {skip:true, trans:`if ${T(OP.CALL)} then if not ${N.bi}[58](${a},${b},${c},${N.r},${nextId}) then ${fall} end end`};
      case OP.RETURN:    return {skip:true, trans:`if ${T(OP.RETURN)} then ${N.bi}[59](${a},${ins.b===0?0:b},${N.r}) end`};
      case OP.VARARG:    return `if ${T(OP.VARARG)} then local _v=${N.top}.vargs or {} for _i=1,#_v do ${N.r}[${a}+_i-1]=_v[_i] end`;
      case OP.CLOSURE:   return `if ${T(OP.CLOSURE)} then ${N.bi}[61](${a},${b}+1,${N.r})`;
      case OP.TFORCALL:  return `if ${T(OP.TFORCALL)} then local _k,_v=next(${N.r}[${b}],${N.r}[${c}]) ${N.r}[${a}]=_k if _k~=nil then ${N.r}[${a}+1]=_v end`;
      case OP.JMP: {
        const tgt = ins.a<0 ? HALT : p.__stateId[ins.a];
        return {skip:true, trans:transition(sid, tgt)};
      }
      case OP.TEST: {
        const tgt = ins.c<0 ? HALT : p.__stateId[ins.c];
        // b==1 means "jump if falsy", b==0 means "jump if truthy"
        const cond = ins.b===1 ? `not ${N.r}[${a}]` : `${N.r}[${a}]`;
        return {skip:true, trans:
          `if (${cond}) then ${transition(sid,tgt)} else ${transition(sid,nextId)} end`
        };
      }
      default:
        return `--`;
    }
  }

  const stateActions=[];
  for(const p of protos){
    if(!p) continue;
    const protoId=p.__gid;
    for(let i=0;i<p.code.length;i++){
      const ins=p.code[i];
      const ofs=p.__bhOfs[i];
      const sid=p.__stateId[i];
      const nextId=(i+1<p.code.length) ? p.__stateId[i+1] : HALT;
      const fall=transition(sid, nextId);
      const gate = (i%4===0) ? opaqueTrue() : null;
      const act=opAction(ins, ofs, protoId, p, i);
      if(act && typeof act === 'object' && act.skip){
        stateActions.push({id:sid, action:act.trans});
      } else if(act){
        if(gate){
          const alt=transition(sid, nextId);
          stateActions.push({id:sid, action:`if ${gate} then ${act};${fall} else ${alt} end`});
        } else {
          stateActions.push({id:sid, action:act+';'+fall});
        }
      } else {
        stateActions.push({id:sid, action:fall});
      }
    }
  }

  const primBodies = [
    {slot:31, args:'a,b,r',     body:`r[a]=r[b]`},
    {slot:32, args:'a,v,r',     body:`r[a]=v`},
    {slot:33, args:'a,r',       body:`r[a]=nil`},
    {slot:34, args:'a,b,r',     body:`r[a]=(b~=0)`},
    {slot:35, args:'a,k,r',     body:`r[a]=${N.G}[k]`},
    {slot:36, args:'k,a,r',     body:`${N.G}[k]=r[a]`},
    {slot:37, args:'a,b,c,r',   body:`r[a]=r[b][r[c]]`},
    {slot:38, args:'a,b,c,r',   body:`r[a][r[b]]=r[c]`},
    {slot:39, args:'a,n,r',     body:`r[a]={}`},
    {slot:40, args:'a,i,v,r',   body:`r[a][i]=r[v]`},
    {slot:41, args:'a,b,c,r',   body:`r[a]=r[b]+r[c]`},
    {slot:42, args:'a,b,c,r',   body:`r[a]=r[b]-r[c]`},
    {slot:43, args:'a,b,c,r',   body:`r[a]=r[b]*r[c]`},
    {slot:44, args:'a,b,c,r',   body:`r[a]=r[b]/r[c]`},
    {slot:45, args:'a,b,c,r',   body:`r[a]=r[b]%r[c]`},
    {slot:46, args:'a,b,c,r',   body:`r[a]=r[b]^r[c]`},
    {slot:47, args:'a,b,c,r',   body:`r[a]=math.floor(r[b]/r[c])`},
    {slot:48, args:'a,b,c,r',   body:`r[a]=tostring(r[b])..tostring(r[c])`},
    {slot:49, args:'a,b,r',     body:`r[a]=not r[b]`},
    {slot:50, args:'a,b,r',     body:`r[a]=-r[b]`},
    {slot:51, args:'a,b,r',     body:`r[a]=#r[b]`},
    {slot:52, args:'a,b,c,r',   body:`r[a]=(r[b]==r[c])`},
    {slot:53, args:'a,b,c,r',   body:`r[a]=(r[b]~=r[c])`},
    {slot:54, args:'a,b,c,r',   body:`r[a]=(r[b]<r[c])`},
    {slot:55, args:'a,b,c,r',   body:`r[a]=(r[b]<=r[c])`},
    {slot:56, args:'a,b,c,r',   body:`r[a]=(r[b]>r[c])`},
    {slot:57, args:'a,b,c,r',   body:`r[a]=(r[b]>=r[c])`},
    {slot:58, args:'a,fn,n,r,retState',  body:
    `local callee=r[fn] ` +
    `if type(callee)=="table" and callee.__vm then ` +
      `local newR={} ` +
      `for i=0,n-1 do newR[i]=r[fn+1+i] end ` +
      `${N.frames}[#${N.frames}+1]={x=protos[callee.p].stateId,r=newR,retDst=a,retState=retState} ` +
      `${N.top}=${N.frames}[#${N.frames}] ` +
      `return true ` +
    `else ` +
      `local t={} for i=1,n do t[i]=r[fn+i] end ` +
      `r[a]=callee((table.unpack or unpack)(t)) ` +
      `return false ` +
    `end`},
  {slot:59, args:'a,n,r',     body:
    `local fr=${N.frames}[#${N.frames}] ` +
    `if #${N.frames}<=1 then fr.x=${HALT} return end ` +
    `${N.frames}[#${N.frames}]=nil ` +
    `${N.top}=${N.frames}[#${N.frames}] ` +
    `${N.top}.r[fr.retDst]=r[a] ` +
    `${N.top}.x=fr.retState`},
  {slot:60, args:'a,r',       body:
    `local t={...} for i=1,#t do r[a+i-1]=t[i] end`},
  {slot:61, args:'a,p,r',     body:`r[a]={__vm=true,p=p}`},
  {slot:62, args:'a,b,c,r',   body:
    `local _k,_v=next(r[b],r[c]) r[a]=_k if _k~=nil then r[a+1]=_v end`}
];

  const primOrder=primBodies.slice();
  for(let i=primOrder.length-1;i>0;i--){
    const j=rng()%(i+1);
    const t=primOrder[i]; primOrder[i]=primOrder[j]; primOrder[j]=t;
  }

  const primListSrc = primOrder.map(pb=>
    `{${pb.slot},"${pb.args}",function(${pb.args}) ${pb.body} end}`
  ).join(',');

  const installBody=`for _i=1,#PL do ${N.bi}[PL[_i][1]]=PL[_i][3] end`;

  for(let i=0;i<16;i++){
    const sid=installIds[i];
    const nxt=(i<15) ? installIds[i+1] : lazyId;
    stateActions.push({id:sid, action:transition(sid,nxt)});
  }

  const canaryName=genName();
  const canaryVal=ri(rng,1,255);

  /* Global accessor that works on Delta and other executors */
  const lazyCode=
  `${N.G}["${canaryName}"]=${canaryVal}`;

  stateActions.push({id:lazyId, action:lazyCode+';'+transition(lazyId, protos[0].__stateId[0]||HALT)});

  if(opt.anti){
    const numGuard=Math.max(2, Math.floor(totalIns*0.05));
    for(let i=0;i<numGuard;i++){
      const gid=ri(rng,48,1900);
      const slot=ri(rng,0,bh.length-1);
      const tweak=ri(rng,1,255);
      stateActions.push({
        id: gid,
        action:`${N.bh}[${slot}]=bit32.bxor(${N.bh}[${slot}],${tweak}) if bit32.band(${N.bh}[${slot}],255)==${(bh[slot]^tweak)&0xff} then ${N.G}["${canaryName}"]=(${N.G}["${canaryName}"] or 0)+1 end;`+transition(gid,HALT)
      });
    }
  }

  const junkRatio=(opt.junk||0)/100;
  const numJunk=Math.floor(stateActions.length*junkRatio);
  for(let i=0;i<numJunk;i++){
    const jid=ri(rng,48,1900);
    stateActions.push({id:jid, action:transition(jid,HALT)});
  }

  stateActions.sort((a,b)=>a.id-b.id);

  /* Dispatcher — reads top.x, sets local r = top.r for state bodies.
     Every state action references top.x (via transition) and r (register table). */
  function emitChain(list,pad,depth){
    if(list.length===0) return '';
    if(list.length===1){
      const a=list[0].action;
      /* Prepend local r = top.r so state body uses current frame regs */
      return pad+`if ${N.top}.x==${list[0].id} then local ${N.r}=${N.top}.r; ${a}\n${pad}end\n`;
    }
    const mid=list.length>>1;
    const pivot=list[mid].id;
    const shape=(depth+rng())%3;
    if(shape===0 || list.length<8){
      return pad+`if ${N.top}.x<${pivot} then\n`
           + emitChain(list.slice(0,mid), pad+'  ', depth+1)
           + pad+'else\n'
           + emitChain(list.slice(mid), pad+'  ', depth+1)
           + pad+'end\n';
    }
    if(shape===1){
      const a=list[mid].action;
      return pad+`if ${N.top}.x==${pivot} then local ${N.r}=${N.top}.r; ${a}\n${pad}end\n`
           + emitChain(list.slice(0,mid).concat(list.slice(mid+1)), pad, depth+1);
    }
    const q=Math.floor(list.length/4);
    const p1=list[q].id, p2=list[2*q].id, p3=list[3*q].id;
    return pad+`if ${N.top}.x<${p1} then\n`
         + emitChain(list.slice(0,q), pad+'  ', depth+1)
         + pad+`elseif ${N.top}.x<${p2} then\n`
         + emitChain(list.slice(q,2*q), pad+'  ', depth+1)
         + pad+`elseif ${N.top}.x<${p3} then\n`
         + emitChain(list.slice(2*q,3*q), pad+'  ', depth+1)
         + pad+'else\n'
         + emitChain(list.slice(3*q), pad+'  ', depth+1)
         + pad+'end\n';
  }
  const chain=emitChain(stateActions,'    ',0);

  /* Constants table */
  const kEntries=[];
  for(const p of protos){
    if(!p) continue;
    for(const c of p.K){
      if(c.k==='s' && opt.encrypt!==false){
        const enc=rc4Bytes(rc4StrToBytes(c.v), rc4Key);
        kEntries.push(`${N.RC4}({${enc.join(',')}},{${rc4Key.join(',')}})`);
      } else if(c.k==='s'){
        kEntries.push('"'+c.v.replace(/\\/g,'\\\\').replace(/"/g,'\\"').replace(/\n/g,'\\n')+'"');
      } else if(c.k==='n'){
        const n=c.v;
        const a=ri(rng,1,5000);
        kEntries.push('('+n+'+'+a+'-'+a+')');
      } else {
        kEntries.push('nil');
      }
    }
  }

  // Lua tables are 1-indexed; shift by prepending nil so protos[1]=gid0, protos[2]=gid1, etc.
  const protoSrc=['nil',...protos.map(p=>{
    if(!p) return 'nil';
    const firstState = (p.__stateId && p.__stateId[0]) || HALT;
    return `{stateId=${firstState},params=${p.params}}`;
  })];
  // Lua tables are 1-indexed; kAdd returns 0-based, so prepend nil so k[1]=K[0]
  const kSrc=`local ${N.k}={nil,${kEntries.join(',')}}`;

  /* Header + body */
  const header='-- this file was generated using ironbrew1\n\n';

  const body=
`return(function(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,ba,bb,bc,bd,be,bf,bg,...)
local ${N.G}=(getgenv and getgenv()) or _G or getfenv(0)
local ${N.bh}={${bh.join(',')}}
local ${N.RC4}=function(d,key)
  local S={} for i=0,255 do S[i]=i end
  local j=0
  for i=0,255 do j=(j+S[i]+key[i%#key+1])%256 local t=S[i] S[i]=S[j] S[j]=t end
  local i2,j2=0,0 local o={}
  for kk=1,#d do i2=(i2+1)%256 j2=(j2+S[i2])%256 local t=S[i2] S[i2]=S[j2] S[j2]=t o[kk]=string.char(bit32.bxor(d[kk],S[(S[i2]+S[j2])%256])) end
  return table.concat(o)
end
local ${N.bi}={}
local PL={${primListSrc}}
${installBody}
${kSrc}
local protos={${protoSrc.join(',')}}
local ${N.frames}={{x=protos[1].stateId or 0,r={},vargs={...}}}
local ${N.top}=${N.frames}[1]
local ${N.c}=0
while ${N.top}.x~=${HALT} do
${chain}end
end)(...)
`;

  return {header, body, halt:HALT, totalOps:totalIns, bhLen:bh.length};
}

/* ---------------- SQUEEZE / MINIFY ---------------- */
function escLua(s){ return s.replace(/\\/g,'\\\\').replace(/"/g,'\\"').replace(/\n/g,'\\n').replace(/\r/g,'\\r'); }
function squeezeOutput(src){
  const T=lex(src);
  const out=[];
  let prev=null;
  for(const t of T){
    if(t.t==='eof') break;
    const v = t.t==='s' ? '"'+escLua(t.v)+'"' : t.v;
    if(prev){
      const needSpace =
        (/[A-Za-z0-9_]/.test(prev[prev.length-1]) && /[A-Za-z0-9_]/.test(v[0])) ||
        (prev === '-' && v[0] === '-') ||
        (prev.endsWith('.') && /[0-9]/.test(v[0])) ||
        (/[0-9]/.test(prev[prev.length-1]) && v[0] === '.');
      if(needSpace) out.push(' ');
    }
    out.push(v);
    prev = v;
  }
  return out.join('');
}
function minifySource(src){
  const T=lex(src);
  return T.map(t=>t.t==='s'?'"'+escLua(t.v)+'"':t.v).join(' ').replace(/\s+/g,' ').trim();
}

/* ---------------- UI ---------------- */
const $=id=>document.getElementById(id);
const els={
  input:$('in'), output:$('out'),
  run:$('btnRun'), min:$('btnMin'), reset:$('btnReset'),
  sample:$('btnSample'), clear:$('btnClear'),
  copy:$('btnCopy'), dl:$('btnDl'),
  status:$('statusText'), stats:$('statText'), live:$('liveDot'),
  seed:$('oSeed'), seedView:$('seedView'),
  haltView:$('haltView'), opsView:$('opsView'),
  junk:$('oJunk')
};

const SAMPLE=`-- Define the pool of characters you want to use
local CHARACTERS = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

local randomGenerator = Random.new()

local function generateRandomCode(length)
    local codeTable = {}
    for i = 1, length do
        local randomIndex = randomGenerator:NextInteger(1, #CHARACTERS)
        local character = string.sub(CHARACTERS, randomIndex, randomIndex)
        table.insert(codeTable, character)
    end
    return table.concat(codeTable)
end

local newCode = generateRandomCode(6)
print("Your random Roblox code is: " .. newCode)
`;

function setLive(on){ els.live.classList.toggle('off',!on); }
function setStatus(msg,cls){ els.status.textContent=msg; els.status.className=cls||''; }
function readOpts(){
  return {
    encrypt:$('oEnc').checked,
    anti:$('oAnti').checked,
    single:$('oLine').checked,
    seed:Math.max(0,parseInt($('oSeed').value,10)||4080),
    junk:parseInt(els.junk.value,10)||0
  };
}
function updateMeta(){
  els.seedView.textContent=String(Math.max(0,parseInt(els.seed.value,10)||4080));
}

async function run(){
  const src=els.input.value;
  if(!src.trim()){ setStatus('nothing to compile','err'); return; }
  const opt=readOpts();
  els.run.disabled=true; setLive(true); setStatus('compiling...');
  await new Promise(r=>setTimeout(r,16));
  try{
    const t0=performance.now();
    const tokens=lex(src);
    const ast=parse(tokens);
    const res=buildChunk(ast,opt);
    let out=res.header+res.body;
    if(opt.single){
      out=res.header+squeezeOutput(res.body)+'\n';
    }
    const t1=performance.now();
    els.output.textContent=out;
    const ratio=(out.length/src.length).toFixed(2);
    els.stats.textContent='in '+src.length+'b -> out '+out.length+'b (x'+ratio+') in '+(t1-t0).toFixed(1)+'ms';
    els.haltView.textContent=String(res.halt);
    els.opsView.textContent=String(res.totalOps);
    setStatus('ok','ok');
  }catch(e){
    els.output.textContent='-- error: '+e.message;
    setStatus('error: '+e.message,'err');
    console.error(e);
  }finally{
    setLive(false); els.run.disabled=false;
  }
}

function runMin(){
  try{ els.output.textContent=minifySource(els.input.value); setStatus('minified','ok'); }
  catch(e){ setStatus('error: '+e.message,'err'); }
}

els.run.addEventListener('click',run);
els.min.addEventListener('click',runMin);
els.reset.addEventListener('click',()=>{
  els.input.value=''; els.output.textContent='-- output appears here';
  setStatus('idle'); els.stats.textContent=''; els.opsView.textContent='0';
});
els.sample.addEventListener('click',()=>{ els.input.value=SAMPLE; setStatus('sample loaded'); });
els.clear.addEventListener('click',()=>{ els.input.value=''; setStatus('input cleared'); });
els.copy.addEventListener('click',async()=>{
  try{ await navigator.clipboard.writeText(els.output.textContent); setStatus('copied','ok'); }
  catch{ setStatus('clipboard blocked','err'); }
});
els.dl.addEventListener('click',()=>{
  const blob=new Blob([els.output.textContent],{type:'text/plain'});
  const a=document.createElement('a');
  a.href=URL.createObjectURL(blob);
  a.download='ironbrew1.lua';
  document.body.appendChild(a); a.click(); a.remove();
  URL.revokeObjectURL(a.href);
  setStatus('saved','ok');
});
els.seed.addEventListener('input',updateMeta);
els.junk.addEventListener('input',()=>{ els.junkView && (els.junkView.textContent=els.junk.value+'%'); });

document.addEventListener('keydown',e=>{
  if((e.ctrlKey||e.metaKey)&&e.key==='Enter'){ e.preventDefault(); run(); }
});

els.input.value=SAMPLE;
updateMeta();
setStatus('ready');
})();
</script>
</body>
</html>
