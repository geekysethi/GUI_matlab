function varargout = sliderdemo8(varargin)
% SLIDERDEMO8 MATLAB code for sliderdemo8.fig
%      SLIDERDEMO8, by itself, creates a new SLIDERDEMO8 or raises the existing
%      singleton*.
%
%      H = SLIDERDEMO8 returns the handle to a new SLIDERDEMO8 or the handle to
%      the existing singleton*.
%
%      SLIDERDEMO8('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERDEMO8.M with the given input arguments.
%
%      SLIDERDEMO8('Property','Value',...) creates a new SLIDERDEMO8 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sliderdemo8_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sliderdemo8_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sliderdemo8

% Last Modified by GUIDE v2.5 03-Jul-2015 14:17:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sliderdemo8_OpeningFcn, ...
                   'gui_OutputFcn',  @sliderdemo8_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before sliderdemo8 is made visible.
function sliderdemo8_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sliderdemo8 (see VARARGIN)

% Choose default command line output for sliderdemo8
handles.output = hObject;

% Update handles structure

guidata(hObject, handles);

% UIWAIT makes sliderdemo8 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global  k i1 j1
i1=1;
j1=400;
k=1;

set(handles.text1,'visible','off')
set(handles.text2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
set(handles.text5,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
set(handles.text8,'visible','off')
set(handles.slider1,'Value',0);
set(handles.slider2,'Value',100);
set(handles.slider3,'Value',200);
set(handles.slider4,'Value',300);


% --- Outputs from this function are returned to the command line.
function varargout = sliderdemo8_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
   

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i x j k i1 j1
x=0;
k=1;
while(x<k)
    if(x<-1)
        break;
    end
for i=i1:400
    
    if((0<i)&&(i<100))
      
        
        set(handles.slider1,'value',i)
        pause(.01)
        if(i<50)
        set(handles.text1,'visible','on')
        set(handles.text2,'visible','off')
        else
        set(handles.text2,'visible','on')
        set(handles.text1,'visible','off')
    
        end


    end
        if(i<-1)
         break;
        end
        
 
    if((100<i)&&(i<200))
        set(handles.slider2,'value',i)
        pause(.01)
        if(i<150)
        set(handles.text3,'visible','on')
        set(handles.text4,'visible','off')
        else
        set(handles.text4,'visible','on')
        set(handles.text3,'visible','off')
    
        end


    end
    if(i<-1)
         break;
    end
    if((200<i)&&(i<300))
        set(handles.slider3,'value',i)
        pause(.01)
        if(i<250)
        set(handles.text5,'visible','on')
        set(handles.text6,'visible','off')
        else
        set(handles.text6,'visible','on')
        set(handles.text5,'visible','off')
    
        end


    end
    if(i<-1)
         break;
        end
    if((300<i)&&(i<400))
        set(handles.slider4,'value',i)
        pause(.01)
        if(i<350)
        set(handles.text7,'visible','on')
        set(handles.text8,'visible','off')
        else
        set(handles.text8,'visible','on')
        set(handles.text7,'visible','off')
    
        end


    end
    if(i<-1)
         break;
        end
end


for j=j1:-1:1
    if((300<j)&&(j<=400))
        set(handles.slider4,'value',j)
        pause(.01)
        if(j<-1)
         break;
        end
        if(j>350)
        set(handles.text7,'visible','off')
        set(handles.text8,'visible','on')
        else
        set(handles.text8,'visible','off')
        set(handles.text7,'visible','on')
    
        end


    end
    if((200<j)&&(j<=300))
        set(handles.slider3,'value',j)
        pause(.01)
        if(j<-1)
         break;
        end
        
        if(j>250)
        set(handles.text5,'visible','off')
        set(handles.text6,'visible','on')
        else
        set(handles.text6,'visible','off')
        set(handles.text5,'visible','on')
    
        end
    end
    if(j<=100)
        set(handles.slider1,'value',j)
        pause(.01)
        if(j<-1)
         break;
        end
        
        if(j>50)
        set(handles.text1,'visible','off')
        set(handles.text2,'visible','on')
        else
        set(handles.text2,'visible','off')
        set(handles.text1,'visible','on')
    
        end
    end
 
    if((100<j)&&(j<=200))
        set(handles.slider2,'value',j)
        pause(.01)
        if(j<-1)
         break;
        end
        
        if(j>150)
        set(handles.text3,'visible','off')
        set(handles.text4,'visible','on')
        else
        set(handles.text4,'visible','off')
        set(handles.text3,'visible','on')
    
        end
    end
    
    
    
    
end
    
end
% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global i j i1 j1 k

k=-2;
i=-2;
j=-2;
set(handles.text1,'visible','off')
set(handles.text2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
set(handles.text5,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
set(handles.text8,'visible','off')
set(handles.slider1,'Value',0);
set(handles.slider2,'Value',100);
set(handles.slider3,'Value',200);
set(handles.slider4,'Value',300);
i1=1;
j1=400;


% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global i j  i1 j1  k

k=-2;
i1=i;
j1=j;
i=-2;
j=-2;

    if((0<i1)&&(i1<100))
        set(handles.slider1,'value',i1)
    elseif((100<i1)&&(i1<200))
        set(handles.slider2,'value',i1)
    
    elseif((200<i1)&&(i1<300))
        set(handles.slider3,'value',i1)
    
    elseif((300<i1)&&(i1<400))
        set(handles.slider4,'value',i1)
    
    elseif((300<j1)&&(j1<=400))
        set(handles.slider4,'value',j1)
    
    elseif((200<j1)&&(j1<=300))
        set(handles.slider3,'value',j1)
    
    elseif(j1<=100)
        set(handles.slider1,'value',j1)
    
    elseif  ((100<j1)&&(j1<=200))
        set(handles.slider2,'value',j1)
    end
  